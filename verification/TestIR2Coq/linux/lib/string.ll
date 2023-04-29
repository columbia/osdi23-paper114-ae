; ModuleID = 'lib/string.c'
source_filename = "lib/string.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.word_at_a_time = type { i64, i64 }

@__const.strscpy.constants = private unnamed_addr constant %struct.word_at_a_time { i64 72340172838076673, i64 -9187201950435737472 }, align 8
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str = private unnamed_addr constant [34 x i8] c"\010detected buffer overflow in %s\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @strncasecmp(i8* nocapture noundef readonly %s1, i8* nocapture noundef readonly %s2, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64 %len, 0
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry, %do.cond
  %s1.addr.0 = phi i8* [ %incdec.ptr, %do.cond ], [ %s1, %entry ]
  %s2.addr.0 = phi i8* [ %incdec.ptr1, %do.cond ], [ %s2, %entry ]
  %len.addr.0 = phi i64 [ %dec, %do.cond ], [ %len, %entry ]
  %incdec.ptr = getelementptr i8, i8* %s1.addr.0, i64 1
  %0 = load i8, i8* %s1.addr.0, align 1
  %incdec.ptr1 = getelementptr i8, i8* %s2.addr.0, i64 1
  %1 = load i8, i8* %s2.addr.0, align 1
  %tobool2 = icmp ne i8 %0, 0
  %tobool3 = icmp ne i8 %1, 0
  %or.cond = select i1 %tobool2, i1 %tobool3, i1 false
  br i1 %or.cond, label %if.end5, label %do.end

if.end5:                                          ; preds = %do.body
  %cmp = icmp eq i8 %0, %1
  br i1 %cmp, label %do.cond, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call = call fastcc i8 @__tolower(i8 noundef %0) #13
  %call10 = call fastcc i8 @__tolower(i8 noundef %1) #13
  %cmp13.not = icmp eq i8 %call, %call10
  br i1 %cmp13.not, label %do.cond, label %do.end

do.cond:                                          ; preds = %if.end9, %if.end5
  %c1.0 = phi i8 [ %0, %if.end5 ], [ %call, %if.end9 ]
  %dec = add i64 %len.addr.0, -1
  %tobool17.not = icmp eq i64 %dec, 0
  br i1 %tobool17.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end9, %do.body, %do.cond
  %c1.1 = phi i8 [ %c1.0, %do.cond ], [ %call, %if.end9 ], [ %0, %do.body ]
  %c2.1 = phi i8 [ %c1.0, %do.cond ], [ %call10, %if.end9 ], [ %1, %do.body ]
  %conv18 = zext i8 %c1.1 to i32
  %conv19 = zext i8 %c2.1 to i32
  %sub = sub nsw i32 %conv18, %conv19
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end
  %retval.0 = phi i32 [ %sub, %do.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @__tolower(i8 noundef %c) unnamed_addr #2 {
entry:
  %0 = zext i8 %c to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = and i8 %1, 1
  %cmp.not = icmp eq i8 %2, 0
  %sub = add i8 %c, 32
  %spec.select = select i1 %cmp.not, i8 %c, i8 %sub
  ret i8 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @strcasecmp(i8* nocapture noundef readonly %s1, i8* nocapture noundef readonly %s2) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %s1.addr.0 = phi i8* [ %s1, %entry ], [ %incdec.ptr, %do.body ]
  %s2.addr.0 = phi i8* [ %s2, %entry ], [ %incdec.ptr1, %do.body ]
  %incdec.ptr = getelementptr i8, i8* %s1.addr.0, i64 1
  %0 = load i8, i8* %s1.addr.0, align 1
  %call = call fastcc i8 @__tolower(i8 noundef %0) #13
  %incdec.ptr1 = getelementptr i8, i8* %s2.addr.0, i64 1
  %1 = load i8, i8* %s2.addr.0, align 1
  %call2 = call fastcc i8 @__tolower(i8 noundef %1) #13
  %cmp = icmp eq i8 %call, %call2
  %cmp5 = icmp ne i8 %call, 0
  %2 = and i1 %cmp5, %cmp
  br i1 %2, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %conv = zext i8 %call to i32
  %conv3 = zext i8 %call2 to i32
  %sub = sub nsw i32 %conv, %conv3
  ret i32 %sub
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i8* @strcpy(i8* noundef returned writeonly %dest, i8* nocapture noundef readonly %src) local_unnamed_addr #3 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %dest.addr.0 = phi i8* [ %dest, %entry ], [ %incdec.ptr1, %while.cond ]
  %src.addr.0 = phi i8* [ %src, %entry ], [ %incdec.ptr, %while.cond ]
  %incdec.ptr = getelementptr i8, i8* %src.addr.0, i64 1
  %0 = load i8, i8* %src.addr.0, align 1
  %incdec.ptr1 = getelementptr i8, i8* %dest.addr.0, i64 1
  store i8 %0, i8* %dest.addr.0, align 1
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret i8* %dest
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i8* @strncpy(i8* noundef returned writeonly %dest, i8* nocapture noundef readonly %src, i64 noundef %count) local_unnamed_addr #3 {
entry:
  %tobool.not8 = icmp eq i64 %count, 0
  br i1 %tobool.not8, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %tmp.011 = phi i8* [ %incdec.ptr2, %while.body ], [ %dest, %entry ]
  %count.addr.010 = phi i64 [ %dec, %while.body ], [ %count, %entry ]
  %src.addr.09 = phi i8* [ %spec.select, %while.body ], [ %src, %entry ]
  %0 = load i8, i8* %src.addr.09, align 1
  store i8 %0, i8* %tmp.011, align 1
  %cmp.not = icmp ne i8 %0, 0
  %spec.select.idx = zext i1 %cmp.not to i64
  %spec.select = getelementptr i8, i8* %src.addr.09, i64 %spec.select.idx
  %incdec.ptr2 = getelementptr i8, i8* %tmp.011, i64 1
  %dec = add i64 %count.addr.010, -1
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dest
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @strlcpy(i8* noundef %dest, i8* noundef %src, i64 noundef %size) local_unnamed_addr #4 {
entry:
  %call = call i64 @strlen(i8* noundef %src) #14
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp.not = icmp ult i64 %call, %size
  %sub = add i64 %size, -1
  %cond = select i1 %cmp.not, i64 %call, i64 %sub
  %call1 = call i8* @memcpy(i8* noundef %dest, i8* noundef %src, i64 noundef %cond) #14
  %arrayidx = getelementptr i8, i8* %dest, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @strscpy(i8* nocapture noundef writeonly %dest, i8* noundef %src, i64 noundef %count) local_unnamed_addr #4 {
entry:
  %constants = alloca %struct.word_at_a_time, align 8
  %data = alloca i64, align 8
  %0 = bitcast %struct.word_at_a_time* %constants to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) bitcast (%struct.word_at_a_time* @__const.strscpy.constants to i8*), i64 16, i1 false)
  %cmp = icmp eq i64 %count, 0
  br i1 %cmp, label %cleanup58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp ugt i64 %count, 2147483647
  br i1 %cmp1, label %if.then, label %if.end17, !prof !7

if.then:                                          ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/string.c\22; .popsection; .long 14472b - 14470b; .short 186; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !8
  br label %cleanup58

if.end17:                                         ; preds = %lor.lhs.false
  %1 = ptrtoint i8* %src to i64
  %and = and i64 %1, 7
  %tobool18.not = icmp eq i64 %and, 0
  %and20 = and i64 %1, 4095
  %sub = sub nuw nsw i64 4096, %and20
  %cmp21 = icmp ult i64 %sub, %count
  %spec.select = select i1 %cmp21, i64 %sub, i64 %count
  %max.1 = select i1 %tobool18.not, i64 %count, i64 %spec.select
  %cmp26104 = icmp ugt i64 %max.1, 7
  br i1 %cmp26104, label %while.body.lr.ph, label %while.cond41.preheader

while.body.lr.ph:                                 ; preds = %if.end17
  %2 = bitcast i64* %data to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %count.addr.0107 = phi i64 [ %count, %while.body.lr.ph ], [ %sub38, %cleanup ]
  %res.0106 = phi i64 [ 0, %while.body.lr.ph ], [ %add37, %cleanup ]
  %max.2105 = phi i64 [ %max.1, %while.body.lr.ph ], [ %sub39, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  store i64 0, i64* %data, align 8, !annotation !9
  %add.ptr = getelementptr i8, i8* %src, i64 %res.0106
  %3 = bitcast i8* %add.ptr to i64*
  %4 = load i64, i64* %3, align 8
  %call28 = call fastcc i64 @has_zero(i64 noundef %4, i64* noundef nonnull %data, %struct.word_at_a_time* noundef nonnull %constants) #13
  %tobool29.not = icmp eq i64 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  %5 = load i64, i64* %data, align 8
  %call31 = call fastcc i64 @create_zero_mask(i64 noundef %5) #13
  %and32 = and i64 %call31, %4
  %add.ptr33 = getelementptr i8, i8* %dest, i64 %res.0106
  %6 = bitcast i8* %add.ptr33 to i64*
  store i64 %and32, i64* %6, align 8
  %call34 = call fastcc i64 @find_zero(i64 noundef %call31) #13
  %add = add i64 %call34, %res.0106
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  br label %cleanup58

cleanup:                                          ; preds = %while.body
  %add.ptr36 = getelementptr i8, i8* %dest, i64 %res.0106
  %7 = bitcast i8* %add.ptr36 to i64*
  store i64 %4, i64* %7, align 8
  %add37 = add i64 %res.0106, 8
  %sub38 = add i64 %count.addr.0107, -8
  %sub39 = add i64 %max.2105, -8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  %cmp26 = icmp ugt i64 %sub39, 7
  br i1 %cmp26, label %while.body, label %while.cond41.preheader

while.cond41.preheader:                           ; preds = %cleanup, %if.end17
  %res.2.ph = phi i64 [ 0, %if.end17 ], [ %add37, %cleanup ]
  %count.addr.2.ph = phi i64 [ %count, %if.end17 ], [ %sub38, %cleanup ]
  br label %while.cond41

while.cond41:                                     ; preds = %while.cond41.preheader, %while.body43
  %res.2 = phi i64 [ %inc, %while.body43 ], [ %res.2.ph, %while.cond41.preheader ]
  %count.addr.2 = phi i64 [ %dec, %while.body43 ], [ %count.addr.2.ph, %while.cond41.preheader ]
  %tobool42.not = icmp eq i64 %count.addr.2, 0
  br i1 %tobool42.not, label %while.end52, label %while.body43

while.body43:                                     ; preds = %while.cond41
  %arrayidx = getelementptr i8, i8* %src, i64 %res.2
  %8 = load i8, i8* %arrayidx, align 1
  %arrayidx45 = getelementptr i8, i8* %dest, i64 %res.2
  store i8 %8, i8* %arrayidx45, align 1
  %tobool46.not = icmp eq i8 %8, 0
  %inc = add i64 %res.2, 1
  %dec = add i64 %count.addr.2, -1
  br i1 %tobool46.not, label %cleanup58, label %while.cond41

while.end52:                                      ; preds = %while.cond41
  %tobool53.not = icmp eq i64 %res.2, 0
  br i1 %tobool53.not, label %cleanup58, label %if.then54

if.then54:                                        ; preds = %while.end52
  %sub55 = add i64 %res.2, -1
  %arrayidx56 = getelementptr i8, i8* %dest, i64 %sub55
  store i8 0, i8* %arrayidx56, align 1
  br label %cleanup58

cleanup58:                                        ; preds = %while.body43, %cleanup.thread, %if.then, %while.end52, %if.then54, %entry
  %retval.4 = phi i64 [ -7, %if.then ], [ -7, %entry ], [ -7, %if.then54 ], [ -7, %while.end52 ], [ %add, %cleanup.thread ], [ %res.2, %while.body43 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i64 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @has_zero(i64 noundef %a, i64* nocapture noundef writeonly %bits, %struct.word_at_a_time* nocapture noundef readonly %c) unnamed_addr #7 {
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
define internal fastcc i64 @create_zero_mask(i64 noundef %bits) unnamed_addr #2 {
entry:
  %sub = add i64 %bits, -1
  %neg = xor i64 %bits, -1
  %and = and i64 %sub, %neg
  %shr = lshr i64 %and, 7
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @find_zero(i64 noundef %mask) unnamed_addr #8 {
entry:
  %cmp.i = icmp eq i64 %mask, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %mask, i1 false) #15, !range !10
  %conv.i = sub nuw nsw i64 64, %0
  %conv.i.op = lshr i64 %conv.i, 3
  %conv2 = select i1 %cmp.i, i64 0, i64 %conv.i.op
  ret i64 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @strscpy_pad(i8* noundef %dest, i8* noundef %src, i64 noundef %count) local_unnamed_addr #4 {
entry:
  %call = call i64 @strscpy(i8* noundef %dest, i8* noundef %src, i64 noundef %count) #13
  %cmp = icmp slt i64 %call, 0
  %sub = add i64 %count, -1
  %cmp1 = icmp eq i64 %call, %sub
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, i8* %dest, i64 %call
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 1
  %0 = xor i64 %call, -1
  %sub4 = add i64 %0, %count
  %call5 = call i8* @memset(i8* noundef %add.ptr2, i32 noundef 0, i64 noundef %sub4) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i8* @stpcpy(i8* noalias noundef writeonly %dest, i8* noalias nocapture noundef readonly %src) local_unnamed_addr #3 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %dest.addr.0 = phi i8* [ %dest, %entry ], [ %incdec.ptr1, %while.cond ]
  %src.addr.0 = phi i8* [ %src, %entry ], [ %incdec.ptr, %while.cond ]
  %incdec.ptr = getelementptr i8, i8* %src.addr.0, i64 1
  %0 = load i8, i8* %src.addr.0, align 1
  %incdec.ptr1 = getelementptr i8, i8* %dest.addr.0, i64 1
  store i8 %0, i8* %dest.addr.0, align 1
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret i8* %dest.addr.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i8* @strcat(i8* noundef returned %dest, i8* nocapture noundef readonly %src) local_unnamed_addr #3 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %dest.addr.0 = phi i8* [ %dest, %entry ], [ %incdec.ptr, %while.cond ]
  %0 = load i8, i8* %dest.addr.0, align 1
  %tobool.not = icmp eq i8 %0, 0
  %incdec.ptr = getelementptr i8, i8* %dest.addr.0, i64 1
  br i1 %tobool.not, label %while.cond1, label %while.cond

while.cond1:                                      ; preds = %while.cond, %while.cond1
  %dest.addr.1 = phi i8* [ %incdec.ptr3, %while.cond1 ], [ %dest.addr.0, %while.cond ]
  %src.addr.0 = phi i8* [ %incdec.ptr2, %while.cond1 ], [ %src, %while.cond ]
  %incdec.ptr2 = getelementptr i8, i8* %src.addr.0, i64 1
  %1 = load i8, i8* %src.addr.0, align 1
  %incdec.ptr3 = getelementptr i8, i8* %dest.addr.1, i64 1
  store i8 %1, i8* %dest.addr.1, align 1
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %while.end6, label %while.cond1

while.end6:                                       ; preds = %while.cond1
  ret i8* %dest
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i8* @strncat(i8* noundef returned %dest, i8* nocapture noundef readonly %src, i64 noundef %count) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i64 %count, 0
  br i1 %tobool.not, label %if.end11, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond
  %dest.addr.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %dest, %entry ]
  %0 = load i8, i8* %dest.addr.0, align 1
  %tobool1.not = icmp eq i8 %0, 0
  %incdec.ptr = getelementptr i8, i8* %dest.addr.0, i64 1
  br i1 %tobool1.not, label %while.cond2, label %while.cond

while.cond2:                                      ; preds = %while.cond, %while.body6
  %dest.addr.1 = phi i8* [ %incdec.ptr4, %while.body6 ], [ %dest.addr.0, %while.cond ]
  %src.addr.0 = phi i8* [ %incdec.ptr3, %while.body6 ], [ %src, %while.cond ]
  %count.addr.0 = phi i64 [ %dec, %while.body6 ], [ %count, %while.cond ]
  %1 = load i8, i8* %src.addr.0, align 1
  %incdec.ptr4 = getelementptr i8, i8* %dest.addr.1, i64 1
  store i8 %1, i8* %dest.addr.1, align 1
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end11, label %while.body6

while.body6:                                      ; preds = %while.cond2
  %incdec.ptr3 = getelementptr i8, i8* %src.addr.0, i64 1
  %dec = add i64 %count.addr.0, -1
  %cmp7 = icmp eq i64 %dec, 0
  br i1 %cmp7, label %if.then9, label %while.cond2

if.then9:                                         ; preds = %while.body6
  store i8 0, i8* %incdec.ptr4, align 1
  br label %if.end11

if.end11:                                         ; preds = %while.cond2, %if.then9, %entry
  ret i8* %dest
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @strlcat(i8* noundef %dest, i8* noundef %src, i64 noundef %count) local_unnamed_addr #4 {
entry:
  %call = call i64 @strlen(i8* noundef %dest) #14
  %call1 = call i64 @strlen(i8* noundef %src) #14
  %cmp.not = icmp ult i64 %call, %count
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !11

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/string.c\22; .popsection; .long 14472b - 14470b; .short 361; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !12
  unreachable

do.end8:                                          ; preds = %entry
  %add.ptr = getelementptr i8, i8* %dest, i64 %call
  %sub = sub i64 %count, %call
  %cmp9.not = icmp ult i64 %call1, %sub
  %sub12 = add i64 %sub, -1
  %spec.select = select i1 %cmp9.not, i64 %call1, i64 %sub12
  %add = add i64 %call1, %call
  %call14 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %src, i64 noundef %spec.select) #14
  %arrayidx = getelementptr i8, i8* %add.ptr, i64 %spec.select
  store i8 0, i8* %arrayidx, align 1
  ret i64 %add
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i8* @strchrnul(i8* noundef readonly %s, i32 noundef %c) local_unnamed_addr #0 {
entry:
  %0 = trunc i32 %c to i8
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr, %while.cond ]
  %1 = load i8, i8* %s.addr.0, align 1
  %tobool.not = icmp eq i8 %1, 0
  %cmp.not = icmp eq i8 %1, %0
  %or.cond = or i1 %tobool.not, %cmp.not
  %incdec.ptr = getelementptr i8, i8* %s.addr.0, i64 1
  br i1 %or.cond, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret i8* %s.addr.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i8* @strnchrnul(i8* noundef readonly %s, i64 noundef %count, i32 noundef %c) local_unnamed_addr #0 {
entry:
  %tobool.not11 = icmp eq i64 %count, 0
  br i1 %tobool.not11, label %while.end, label %land.lhs.true.lr.ph

land.lhs.true.lr.ph:                              ; preds = %entry
  %0 = trunc i32 %c to i8
  %scevgep = getelementptr i8, i8* %s, i64 %count
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.lr.ph, %while.body
  %dec13.in = phi i64 [ %count, %land.lhs.true.lr.ph ], [ %dec13, %while.body ]
  %s.addr.012 = phi i8* [ %s, %land.lhs.true.lr.ph ], [ %incdec.ptr, %while.body ]
  %dec13 = add i64 %dec13.in, -1
  %1 = load i8, i8* %s.addr.012, align 1
  %tobool1.not = icmp eq i8 %1, 0
  %cmp.not = icmp eq i8 %1, %0
  %or.cond = or i1 %tobool1.not, %cmp.not
  br i1 %or.cond, label %while.end, label %while.body

while.body:                                       ; preds = %land.lhs.true
  %incdec.ptr = getelementptr i8, i8* %s.addr.012, i64 1
  %tobool.not = icmp eq i64 %dec13, 0
  br i1 %tobool.not, label %while.end, label %land.lhs.true

while.end:                                        ; preds = %land.lhs.true, %while.body, %entry
  %s.addr.0.lcssa = phi i8* [ %s, %entry ], [ %scevgep, %while.body ], [ %s.addr.012, %land.lhs.true ]
  ret i8* %s.addr.0.lcssa
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i8* @strnchr(i8* noundef readonly %s, i64 noundef %count, i32 noundef %c) local_unnamed_addr #0 {
entry:
  %0 = trunc i32 %c to i8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr, %if.end ]
  %count.addr.0 = phi i64 [ %count, %entry ], [ %dec, %if.end ]
  %dec = add i64 %count.addr.0, -1
  %tobool.not = icmp eq i64 %count.addr.0, 0
  br i1 %tobool.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i8, i8* %s.addr.0, align 1
  %cmp = icmp eq i8 %1, %0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr i8, i8* %s.addr.0, i64 1
  %cmp5 = icmp eq i8 %1, 0
  br i1 %cmp5, label %return, label %while.cond

return:                                           ; preds = %while.cond, %if.end, %while.body
  %retval.0 = phi i8* [ %s.addr.0, %while.body ], [ null, %if.end ], [ null, %while.cond ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i8* @skip_spaces(i8* noundef readonly %str) local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %while.cond ]
  %0 = load i8, i8* %str.addr.0, align 1
  %1 = zext i8 %0 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %3 = and i8 %2, 32
  %cmp.not = icmp eq i8 %3, 0
  %incdec.ptr = getelementptr i8, i8* %str.addr.0, i64 1
  br i1 %cmp.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret i8* %str.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @strim(i8* noundef %s) local_unnamed_addr #4 {
entry:
  %call = call i64 @strlen(i8* noundef %s) #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, i8* %s, i64 %call
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.end
  %add.ptr.pn = phi i8* [ %add.ptr, %if.end ], [ %end.0, %land.rhs ]
  %end.0 = getelementptr i8, i8* %add.ptr.pn, i64 -1
  %cmp.not = icmp ult i8* %end.0, %s
  br i1 %cmp.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %0 = load i8, i8* %end.0, align 1
  %1 = zext i8 %0 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %3 = and i8 %2, 32
  %cmp3.not = icmp eq i8 %3, 0
  br i1 %cmp3.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs
  store i8 0, i8* %add.ptr.pn, align 1
  %call6 = call i8* @skip_spaces(i8* noundef %s) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i8* [ %call6, %while.end ], [ %s, %entry ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i64 @strspn(i8* nocapture noundef readonly %s, i8* nocapture noundef readonly %accept) local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* %s, align 1
  %cmp.not37 = icmp eq i8 %0, 0
  br i1 %cmp.not37, label %cleanup, label %for.cond2.preheader.lr.ph

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %1 = load i8, i8* %accept, align 1
  %cmp4.not34 = icmp eq i8 %1, 0
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %if.end15
  %2 = phi i8 [ %0, %for.cond2.preheader.lr.ph ], [ %5, %if.end15 ]
  %count.039 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %inc, %if.end15 ]
  %p.038 = phi i8* [ %s, %for.cond2.preheader.lr.ph ], [ %incdec.ptr17, %if.end15 ]
  br i1 %cmp4.not34, label %cleanup, label %for.body6

for.cond2:                                        ; preds = %for.body6
  %3 = load i8, i8* %incdec.ptr, align 1
  %cmp4.not = icmp eq i8 %3, 0
  br i1 %cmp4.not, label %cleanup, label %for.body6

for.body6:                                        ; preds = %for.cond2.preheader, %for.cond2
  %4 = phi i8 [ %3, %for.cond2 ], [ %1, %for.cond2.preheader ]
  %a.035 = phi i8* [ %incdec.ptr, %for.cond2 ], [ %accept, %for.cond2.preheader ]
  %cmp9 = icmp eq i8 %2, %4
  %incdec.ptr = getelementptr i8, i8* %a.035, i64 1
  br i1 %cmp9, label %if.end15, label %for.cond2

if.end15:                                         ; preds = %for.body6
  %inc = add i64 %count.039, 1
  %incdec.ptr17 = getelementptr i8, i8* %p.038, i64 1
  %5 = load i8, i8* %incdec.ptr17, align 1
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %cleanup, label %for.cond2.preheader

cleanup:                                          ; preds = %if.end15, %for.cond2.preheader, %for.cond2, %entry
  %count.033 = phi i64 [ 0, %entry ], [ %count.039, %for.cond2 ], [ 0, %for.cond2.preheader ], [ %inc, %if.end15 ]
  ret i64 %count.033
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i64 @strcspn(i8* nocapture noundef readonly %s, i8* nocapture noundef readonly %reject) local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* %s, align 1
  %cmp.not30 = icmp eq i8 %0, 0
  br i1 %cmp.not30, label %cleanup, label %for.cond2.preheader.lr.ph

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %1 = load i8, i8* %reject, align 1
  %cmp4.not28 = icmp eq i8 %1, 0
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.end
  %2 = phi i8 [ %0, %for.cond2.preheader.lr.ph ], [ %5, %for.end ]
  %count.032 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %inc, %for.end ]
  %p.031 = phi i8* [ %s, %for.cond2.preheader.lr.ph ], [ %incdec.ptr12, %for.end ]
  br i1 %cmp4.not28, label %for.end, label %for.body6

for.cond2:                                        ; preds = %for.body6
  %3 = load i8, i8* %incdec.ptr, align 1
  %cmp4.not = icmp eq i8 %3, 0
  br i1 %cmp4.not, label %for.end, label %for.body6

for.body6:                                        ; preds = %for.cond2.preheader, %for.cond2
  %4 = phi i8 [ %3, %for.cond2 ], [ %1, %for.cond2.preheader ]
  %r.029 = phi i8* [ %incdec.ptr, %for.cond2 ], [ %reject, %for.cond2.preheader ]
  %cmp9 = icmp eq i8 %2, %4
  %incdec.ptr = getelementptr i8, i8* %r.029, i64 1
  br i1 %cmp9, label %cleanup, label %for.cond2

for.end:                                          ; preds = %for.cond2, %for.cond2.preheader
  %inc = add i64 %count.032, 1
  %incdec.ptr12 = getelementptr i8, i8* %p.031, i64 1
  %5 = load i8, i8* %incdec.ptr12, align 1
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %cleanup, label %for.cond2.preheader

cleanup:                                          ; preds = %for.end, %for.body6, %entry
  %count.027 = phi i64 [ 0, %entry ], [ %count.032, %for.body6 ], [ %inc, %for.end ]
  ret i64 %count.027
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i8* @strpbrk(i8* noundef readonly %cs, i8* nocapture noundef readonly %ct) local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* %cs, align 1
  %cmp.not26 = icmp eq i8 %0, 0
  br i1 %cmp.not26, label %cleanup, label %for.cond2.preheader.lr.ph

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %1 = load i8, i8* %ct, align 1
  %cmp4.not24 = icmp eq i8 %1, 0
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.inc11
  %2 = phi i8 [ %0, %for.cond2.preheader.lr.ph ], [ %5, %for.inc11 ]
  %sc1.027 = phi i8* [ %cs, %for.cond2.preheader.lr.ph ], [ %incdec.ptr12, %for.inc11 ]
  br i1 %cmp4.not24, label %for.inc11, label %for.body6

for.cond2:                                        ; preds = %for.body6
  %3 = load i8, i8* %incdec.ptr, align 1
  %cmp4.not = icmp eq i8 %3, 0
  br i1 %cmp4.not, label %for.inc11, label %for.body6

for.body6:                                        ; preds = %for.cond2.preheader, %for.cond2
  %4 = phi i8 [ %3, %for.cond2 ], [ %1, %for.cond2.preheader ]
  %sc2.025 = phi i8* [ %incdec.ptr, %for.cond2 ], [ %ct, %for.cond2.preheader ]
  %cmp9 = icmp eq i8 %2, %4
  %incdec.ptr = getelementptr i8, i8* %sc2.025, i64 1
  br i1 %cmp9, label %cleanup, label %for.cond2

for.inc11:                                        ; preds = %for.cond2, %for.cond2.preheader
  %incdec.ptr12 = getelementptr i8, i8* %sc1.027, i64 1
  %5 = load i8, i8* %incdec.ptr12, align 1
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %cleanup, label %for.cond2.preheader

cleanup:                                          ; preds = %for.inc11, %for.body6, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %sc1.027, %for.body6 ], [ null, %for.inc11 ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i8* @strsep(i8** nocapture noundef %s, i8* nocapture noundef readonly %ct) local_unnamed_addr #3 {
entry:
  %0 = load i8*, i8** %s, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @strpbrk(i8* noundef nonnull %0, i8* noundef %ct) #13
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %incdec.ptr = getelementptr i8, i8* %call, i64 1
  store i8 0, i8* %call, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %end.0 = phi i8* [ %incdec.ptr, %if.then1 ], [ null, %if.end ]
  store i8* %end.0, i8** %s, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2
  ret i8* %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i1 @sysfs_streq(i8* nocapture noundef readonly %s1, i8* nocapture noundef readonly %s2) local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* %s1, align 1
  %tobool.not48 = icmp eq i8 %0, 0
  br i1 %tobool.not48, label %while.endthread-pre-split, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.body
  %1 = phi i8 [ %3, %while.body ], [ %0, %entry ]
  %s2.addr.050 = phi i8* [ %incdec.ptr4, %while.body ], [ %s2, %entry ]
  %s1.addr.049 = phi i8* [ %incdec.ptr, %while.body ], [ %s1, %entry ]
  %2 = load i8, i8* %s2.addr.050, align 1
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, i8* %s1.addr.049, i64 1
  %incdec.ptr4 = getelementptr i8, i8* %s2.addr.050, i64 1
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %while.endthread-pre-split, label %land.rhs

while.endthread-pre-split:                        ; preds = %while.body, %entry
  %s1.addr.0.lcssa = phi i8* [ %s1, %entry ], [ %incdec.ptr, %while.body ]
  %s2.addr.0.lcssa = phi i8* [ %s2, %entry ], [ %incdec.ptr4, %while.body ]
  %.pr = load i8, i8* %s2.addr.0.lcssa, align 1
  br label %while.end

while.end:                                        ; preds = %land.rhs, %while.endthread-pre-split
  %s1.addr.046 = phi i8* [ %s1.addr.0.lcssa, %while.endthread-pre-split ], [ %s1.addr.049, %land.rhs ]
  %s2.addr.044 = phi i8* [ %s2.addr.0.lcssa, %while.endthread-pre-split ], [ %s2.addr.050, %land.rhs ]
  %4 = phi i8 [ 0, %while.endthread-pre-split ], [ %1, %land.rhs ]
  %tobool.not41 = phi i1 [ true, %while.endthread-pre-split ], [ false, %land.rhs ]
  %5 = phi i8 [ %.pr, %while.endthread-pre-split ], [ %2, %land.rhs ]
  %cmp7 = icmp eq i8 %4, %5
  br i1 %cmp7, label %return, label %if.end

if.end:                                           ; preds = %while.end
  %cmp11 = icmp eq i8 %5, 10
  %or.cond = select i1 %tobool.not41, i1 %cmp11, i1 false
  br i1 %or.cond, label %land.lhs.true13, label %if.end16

land.lhs.true13:                                  ; preds = %if.end
  %arrayidx = getelementptr i8, i8* %s2.addr.044, i64 1
  %6 = load i8, i8* %arrayidx, align 1
  %tobool14.not = icmp eq i8 %6, 0
  br i1 %tobool14.not, label %return, label %if.end26

if.end16:                                         ; preds = %if.end
  %cmp18 = icmp eq i8 %4, 10
  br i1 %cmp18, label %land.lhs.true20, label %if.end26

land.lhs.true20:                                  ; preds = %if.end16
  %arrayidx21 = getelementptr i8, i8* %s1.addr.046, i64 1
  %7 = load i8, i8* %arrayidx21, align 1
  %tobool22.not = icmp eq i8 %7, 0
  %tobool24.not = icmp eq i8 %5, 0
  %or.cond39 = select i1 %tobool22.not, i1 %tobool24.not, i1 false
  br i1 %or.cond39, label %return, label %if.end26

if.end26:                                         ; preds = %land.lhs.true13, %land.lhs.true20, %if.end16
  br label %return

return:                                           ; preds = %land.lhs.true20, %land.lhs.true13, %while.end, %if.end26
  %retval.0 = phi i1 [ false, %if.end26 ], [ true, %while.end ], [ true, %land.lhs.true13 ], [ true, %land.lhs.true20 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @match_string(i8** nocapture noundef readonly %array, i64 noundef %n, i8* noundef %string) local_unnamed_addr #4 {
entry:
  %cmp12.not = icmp eq i64 %n, 0
  br i1 %cmp12.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %conv14 = phi i64 [ %conv, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr i8*, i8** %array, i64 %conv14
  %0 = load i8*, i8** %arrayidx, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %call = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef %string) #14
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %cleanup.loopexit.split.loop.exit19, label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = shl nsw i64 %conv14, 32
  %sext = add i64 %inc, 4294967296
  %conv = ashr exact i64 %sext, 32
  %cmp = icmp ult i64 %conv, %n
  br i1 %cmp, label %for.body, label %cleanup

cleanup.loopexit.split.loop.exit19:               ; preds = %if.end
  %indvars.le = trunc i64 %conv14 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %for.body, %cleanup.loopexit.split.loop.exit19, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %indvars.le, %cleanup.loopexit.split.loop.exit19 ], [ -22, %for.body ], [ -22, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @__sysfs_match_string(i8** nocapture noundef readonly %array, i64 noundef %n, i8* nocapture noundef readonly %str) local_unnamed_addr #0 {
entry:
  %cmp11.not = icmp eq i64 %n, 0
  br i1 %cmp11.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %conv13 = phi i64 [ %conv, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr i8*, i8** %array, i64 %conv13
  %0 = load i8*, i8** %arrayidx, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %call = call i1 @sysfs_streq(i8* noundef nonnull %0, i8* noundef %str) #13
  br i1 %call, label %cleanup.loopexit.split.loop.exit18, label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = shl nsw i64 %conv13, 32
  %sext = add i64 %inc, 4294967296
  %conv = ashr exact i64 %sext, 32
  %cmp = icmp ult i64 %conv, %n
  br i1 %cmp, label %for.body, label %cleanup

cleanup.loopexit.split.loop.exit18:               ; preds = %if.end
  %indvars.le = trunc i64 %conv13 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %for.body, %cleanup.loopexit.split.loop.exit18, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %indvars.le, %cleanup.loopexit.split.loop.exit18 ], [ -22, %for.body ], [ -22, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly
define dso_local i8* @memset16(i16* noundef writeonly %s, i16 noundef %v, i64 noundef %count) local_unnamed_addr #9 {
entry:
  switch i64 %count, label %vector.ph [
    i64 0, label %while.end
    i64 1, label %while.body.preheader
  ]

vector.ph:                                        ; preds = %entry
  %n.vec = and i64 %count, -2
  %ind.end = getelementptr i16, i16* %s, i64 %n.vec
  %ind.end7 = and i64 %count, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i16, i16* %s, i64 %index
  %0 = or i64 %index, 1
  %next.gep8 = getelementptr i16, i16* %s, i64 %0
  store i16 %v, i16* %next.gep, align 2
  store i16 %v, i16* %next.gep8, align 2
  %index.next = add nuw i64 %index, 2
  %1 = icmp eq i64 %index.next, %n.vec
  br i1 %1, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %count
  br i1 %cmp.n, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry, %middle.block
  %xs.05.ph = phi i16* [ %s, %entry ], [ %ind.end, %middle.block ]
  %count.addr.04.ph = phi i64 [ %count, %entry ], [ %ind.end7, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %xs.05 = phi i16* [ %incdec.ptr, %while.body ], [ %xs.05.ph, %while.body.preheader ]
  %count.addr.04 = phi i64 [ %dec, %while.body ], [ %count.addr.04.ph, %while.body.preheader ]
  %dec = add i64 %count.addr.04, -1
  %incdec.ptr = getelementptr i16, i16* %xs.05, i64 1
  store i16 %v, i16* %xs.05, align 2
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !15

while.end:                                        ; preds = %while.body, %middle.block, %entry
  %2 = bitcast i16* %s to i8*
  ret i8* %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly
define dso_local i8* @memset32(i32* noundef writeonly %s, i32 noundef %v, i64 noundef %count) local_unnamed_addr #9 {
entry:
  switch i64 %count, label %vector.ph [
    i64 0, label %while.end
    i64 1, label %while.body.preheader
  ]

vector.ph:                                        ; preds = %entry
  %n.vec = and i64 %count, -2
  %ind.end = getelementptr i32, i32* %s, i64 %n.vec
  %ind.end7 = and i64 %count, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i32, i32* %s, i64 %index
  %0 = or i64 %index, 1
  %next.gep8 = getelementptr i32, i32* %s, i64 %0
  store i32 %v, i32* %next.gep, align 4
  store i32 %v, i32* %next.gep8, align 4
  %index.next = add nuw i64 %index, 2
  %1 = icmp eq i64 %index.next, %n.vec
  br i1 %1, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %count
  br i1 %cmp.n, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry, %middle.block
  %xs.05.ph = phi i32* [ %s, %entry ], [ %ind.end, %middle.block ]
  %count.addr.04.ph = phi i64 [ %count, %entry ], [ %ind.end7, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %xs.05 = phi i32* [ %incdec.ptr, %while.body ], [ %xs.05.ph, %while.body.preheader ]
  %count.addr.04 = phi i64 [ %dec, %while.body ], [ %count.addr.04.ph, %while.body.preheader ]
  %dec = add i64 %count.addr.04, -1
  %incdec.ptr = getelementptr i32, i32* %xs.05, i64 1
  store i32 %v, i32* %xs.05, align 4
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !17

while.end:                                        ; preds = %while.body, %middle.block, %entry
  %2 = bitcast i32* %s to i8*
  ret i8* %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly
define dso_local i8* @memset64(i64* noundef writeonly %s, i64 noundef %v, i64 noundef %count) local_unnamed_addr #9 {
entry:
  switch i64 %count, label %vector.ph [
    i64 0, label %while.end
    i64 1, label %while.body.preheader
  ]

vector.ph:                                        ; preds = %entry
  %n.vec = and i64 %count, -2
  %ind.end = getelementptr i64, i64* %s, i64 %n.vec
  %ind.end7 = and i64 %count, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i64, i64* %s, i64 %index
  %0 = or i64 %index, 1
  %next.gep8 = getelementptr i64, i64* %s, i64 %0
  store i64 %v, i64* %next.gep, align 8
  store i64 %v, i64* %next.gep8, align 8
  %index.next = add nuw i64 %index, 2
  %1 = icmp eq i64 %index.next, %n.vec
  br i1 %1, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %count
  br i1 %cmp.n, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry, %middle.block
  %xs.05.ph = phi i64* [ %s, %entry ], [ %ind.end, %middle.block ]
  %count.addr.04.ph = phi i64 [ %count, %entry ], [ %ind.end7, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %xs.05 = phi i64* [ %incdec.ptr, %while.body ], [ %xs.05.ph, %while.body.preheader ]
  %count.addr.04 = phi i64 [ %dec, %while.body ], [ %count.addr.04.ph, %while.body.preheader ]
  %dec = add i64 %count.addr.04, -1
  %incdec.ptr = getelementptr i64, i64* %xs.05, i64 1
  store i64 %v, i64* %xs.05, align 8
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !19

while.end:                                        ; preds = %while.body, %middle.block, %entry
  %2 = bitcast i64* %s to i8*
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bcmp(i8* noundef %a, i8* noundef %b, i64 noundef %len) local_unnamed_addr #4 {
entry:
  %call = call i32 @memcmp(i8* noundef %a, i8* noundef %b, i64 noundef %len) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i8* @memscan(i8* noundef readonly %addr, i32 noundef %c, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %tobool.not9 = icmp eq i64 %size, 0
  br i1 %tobool.not9, label %cleanup, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %0 = trunc i32 %c to i8
  %scevgep = getelementptr i8, i8* %addr, i64 %size
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %p.011 = phi i8* [ %addr, %while.body.lr.ph ], [ %incdec.ptr, %if.end ]
  %size.addr.010 = phi i64 [ %size, %while.body.lr.ph ], [ %dec, %if.end ]
  %1 = load i8, i8* %p.011, align 1
  %cmp = icmp eq i8 %1, %0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr i8, i8* %p.011, i64 1
  %dec = add i64 %size.addr.010, -1
  %tobool.not = icmp eq i64 %dec, 0
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end, %entry
  %p.0.lcssa = phi i8* [ %addr, %entry ], [ %scevgep, %if.end ], [ %p.011, %while.body ]
  ret i8* %p.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @strstr(i8* noundef %s1, i8* noundef %s2) local_unnamed_addr #4 {
entry:
  %call = call i64 @strlen(i8* noundef %s2) #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i64 @strlen(i8* noundef %s1) #14
  %cmp.not17 = icmp ult i64 %call1, %call
  br i1 %cmp.not17, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end, %if.end5
  %l1.019 = phi i64 [ %dec, %if.end5 ], [ %call1, %if.end ]
  %s1.addr.018 = phi i8* [ %incdec.ptr, %if.end5 ], [ %s1, %if.end ]
  %call2 = call i32 @memcmp(i8* noundef %s1.addr.018, i8* noundef %s2, i64 noundef %call) #14
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %while.body
  %dec = add i64 %l1.019, -1
  %incdec.ptr = getelementptr i8, i8* %s1.addr.018, i64 1
  %cmp.not = icmp ult i64 %dec, %call
  br i1 %cmp.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end5, %if.end, %entry
  %retval.0 = phi i8* [ %s1, %entry ], [ null, %if.end ], [ %s1.addr.018, %while.body ], [ null, %if.end5 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @strnstr(i8* noundef %s1, i8* noundef %s2, i64 noundef %len) local_unnamed_addr #4 {
entry:
  %call = call i64 @strlen(i8* noundef %s2) #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp.not13 = icmp ugt i64 %call, %len
  br i1 %cmp.not13, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.end4
  %len.addr.015 = phi i64 [ %dec, %if.end4 ], [ %len, %while.cond.preheader ]
  %s1.addr.014 = phi i8* [ %incdec.ptr, %if.end4 ], [ %s1, %while.cond.preheader ]
  %call1 = call i32 @memcmp(i8* noundef %s1.addr.014, i8* noundef %s2, i64 noundef %call) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %while.body
  %dec = add i64 %len.addr.015, -1
  %incdec.ptr = getelementptr i8, i8* %s1.addr.014, i64 1
  %cmp.not = icmp ult i64 %dec, %call
  br i1 %cmp.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.end4, %while.cond.preheader, %entry
  %retval.0 = phi i8* [ %s1, %entry ], [ null, %while.cond.preheader ], [ %s1.addr.014, %while.body ], [ null, %if.end4 ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i8* @memchr_inv(i8* noundef %start, i32 noundef %c, i64 noundef %bytes) local_unnamed_addr #0 {
entry:
  %conv = trunc i32 %c to i8
  %cmp = icmp ult i64 %bytes, 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv2 = trunc i64 %bytes to i32
  %call = call fastcc i8* @check_bytes8(i8* noundef %start, i8 noundef %conv, i32 noundef %conv2) #13
  br label %cleanup24

if.end:                                           ; preds = %entry
  %conv.mask = and i32 %c, 255
  %conv3 = zext i32 %conv.mask to i64
  %mul = mul nuw i64 %conv3, 72340172838076673
  %0 = ptrtoint i8* %start to i64
  %1 = trunc i64 %0 to i32
  %conv4 = and i32 %1, 7
  %tobool.not = icmp eq i32 %conv4, 0
  br i1 %tobool.not, label %if.end12, label %if.then5

if.then5:                                         ; preds = %if.end
  %sub = sub nuw nsw i32 8, %conv4
  %call6 = call fastcc i8* @check_bytes8(i8* noundef %start, i8 noundef %conv, i32 noundef %sub) #13
  %tobool7.not = icmp eq i8* %call6, null
  %idx.ext = zext i32 %sub to i64
  %add.ptr = getelementptr i8, i8* %start, i64 %idx.ext
  %sub11 = sub nuw i64 %bytes, %idx.ext
  br i1 %tobool7.not, label %if.end12, label %cleanup24

if.end12:                                         ; preds = %if.then5, %if.end
  %start.addr.1 = phi i8* [ %add.ptr, %if.then5 ], [ %start, %if.end ]
  %bytes.addr.1 = phi i64 [ %sub11, %if.then5 ], [ %bytes, %if.end ]
  %div = lshr i64 %bytes.addr.1, 3
  %conv13 = trunc i64 %div to i32
  %tobool14.not55 = icmp eq i32 %conv13, 0
  br i1 %tobool14.not55, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end12
  %2 = add i64 %bytes.addr.1, 34359738360
  %3 = and i64 %2, 34359738360
  %4 = add nuw nsw i64 %3, 8
  %scevgep = getelementptr i8, i8* %start.addr.1, i64 %4
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end19
  %words.057 = phi i32 [ %dec, %if.end19 ], [ %conv13, %while.body.preheader ]
  %start.addr.256 = phi i8* [ %add.ptr20, %if.end19 ], [ %start.addr.1, %while.body.preheader ]
  %5 = bitcast i8* %start.addr.256 to i64*
  %6 = load i64, i64* %5, align 8
  %cmp15.not = icmp eq i64 %6, %mul
  br i1 %cmp15.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %while.body
  %call18 = call fastcc i8* @check_bytes8(i8* noundef %start.addr.256, i8 noundef %conv, i32 noundef 8) #13
  br label %cleanup24

if.end19:                                         ; preds = %while.body
  %add.ptr20 = getelementptr i8, i8* %start.addr.256, i64 8
  %dec = add i32 %words.057, -1
  %tobool14.not = icmp eq i32 %dec, 0
  br i1 %tobool14.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end19, %if.end12
  %start.addr.2.lcssa = phi i8* [ %start.addr.1, %if.end12 ], [ %scevgep, %if.end19 ]
  %7 = trunc i64 %bytes.addr.1 to i32
  %conv22 = and i32 %7, 7
  %call23 = call fastcc i8* @check_bytes8(i8* noundef %start.addr.2.lcssa, i8 noundef %conv, i32 noundef %conv22) #13
  br label %cleanup24

cleanup24:                                        ; preds = %if.then5, %while.end, %if.then17, %if.then
  %retval.1 = phi i8* [ %call, %if.then ], [ %call18, %if.then17 ], [ %call23, %while.end ], [ %call6, %if.then5 ]
  ret i8* %retval.1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i8* @check_bytes8(i8* noundef readonly %start, i8 noundef %value, i32 noundef %bytes) unnamed_addr #0 {
entry:
  %tobool.not6 = icmp eq i32 %bytes, 0
  br i1 %tobool.not6, label %return, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %bytes.addr.08 = phi i32 [ %dec, %if.end ], [ %bytes, %entry ]
  %start.addr.07 = phi i8* [ %incdec.ptr, %if.end ], [ %start, %entry ]
  %0 = load i8, i8* %start.addr.07, align 1
  %cmp.not = icmp eq i8 %0, %value
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr i8, i8* %start.addr.07, i64 1
  %dec = add i32 %bytes.addr.08, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %return, label %while.body

return:                                           ; preds = %while.body, %if.end, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %if.end ], [ %start.addr.07, %while.body ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i8* @strreplace(i8* noundef %s, i8 noundef %old, i8 noundef %new) local_unnamed_addr #3 {
entry:
  %0 = load i8, i8* %s, align 1
  %tobool.not7 = icmp eq i8 %0, 0
  br i1 %tobool.not7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i8 [ %2, %for.inc ], [ %0, %entry ]
  %s.addr.08 = phi i8* [ %incdec.ptr, %for.inc ], [ %s, %entry ]
  %cmp = icmp eq i8 %1, %old
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store i8 %new, i8* %s.addr.08, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr = getelementptr i8, i8* %s.addr.08, i64 1
  %2 = load i8, i8* %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %s.addr.0.lcssa = phi i8* [ %s, %entry ], [ %incdec.ptr, %for.inc ]
  ret i8* %s.addr.0.lcssa
}

; Function Attrs: cold noinline noreturn nounwind null_pointer_is_valid optsize
define dso_local void @fortify_panic(i8* noundef %name) local_unnamed_addr #10 {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %name) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/string.c\22; .popsection; .long 14472b - 14470b; .short 1165; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !20
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

attributes #0 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold noinline noreturn nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2151179872}
!9 = !{!"auto-init"}
!10 = !{i64 0, i64 65}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2151181769}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = !{i64 2151185297}
