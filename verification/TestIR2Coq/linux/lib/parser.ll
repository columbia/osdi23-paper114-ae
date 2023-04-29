; ModuleID = 'lib/parser.c'
source_filename = "lib/parser.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.match_token = type { i32, i8* }
%struct.substring_t = type { i8*, i8* }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @match_token(i8* noundef %s, %struct.match_token* nocapture noundef readonly %table, %struct.substring_t* noundef %args) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %p.0 = phi %struct.match_token* [ %table, %entry ], [ %incdec.ptr, %for.cond ]
  %pattern = getelementptr inbounds %struct.match_token, %struct.match_token* %p.0, i64 0, i32 1
  %0 = load i8*, i8** %pattern, align 8
  %call = call fastcc i32 @match_one(i8* noundef %s, i8* noundef %0, %struct.substring_t* noundef %args) #5
  %tobool.not = icmp eq i32 %call, 0
  %incdec.ptr = getelementptr %struct.match_token, %struct.match_token* %p.0, i64 1
  br i1 %tobool.not, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  %token = getelementptr inbounds %struct.match_token, %struct.match_token* %p.0, i64 0, i32 0
  %1 = load i32, i32* %token, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @match_one(i8* noundef %s, i8* noundef %p, %struct.substring_t* noundef %args) unnamed_addr #0 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %tobool.not = icmp eq i8* %p, null
  br i1 %tobool.not, label %cleanup88, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call137 = call i8* @strchr(i8* noundef nonnull %p, i32 noundef 37) #6
  %tobool1.not138 = icmp eq i8* %call137, null
  br i1 %tobool1.not138, label %if.then2, label %if.end4.preheader

if.end4.preheader:                                ; preds = %while.cond.preheader
  %sub.ptr.lhs.cast145 = ptrtoint i8* %call137 to i64
  %sub.ptr.rhs.cast146 = ptrtoint i8* %p to i64
  %sub.ptr.sub147 = sub i64 %sub.ptr.lhs.cast145, %sub.ptr.rhs.cast146
  %call5148 = call i32 @strncmp(i8* noundef nonnull %p, i8* noundef %s, i64 noundef %sub.ptr.sub147) #6
  %tobool6.not149 = icmp eq i32 %call5148, 0
  br i1 %tobool6.not149, label %if.end8, label %cleanup88

if.then2:                                         ; preds = %cleanup86, %while.cond.preheader
  %0 = phi i8* [ %p, %while.cond.preheader ], [ %.pre144, %cleanup86 ]
  %s.addr.0.lcssa = phi i8* [ %s, %while.cond.preheader ], [ %s.addr.1, %cleanup86 ]
  %call3 = call i32 @strcmp(i8* noundef %0, i8* noundef %s.addr.0.lcssa) #6
  %cmp = icmp eq i32 %call3, 0
  %conv = zext i1 %cmp to i32
  br label %cleanup88

if.end8:                                          ; preds = %if.end4.preheader, %cleanup86.if.end4_crit_edge
  %sub.ptr.lhs.cast153 = phi i64 [ %sub.ptr.lhs.cast, %cleanup86.if.end4_crit_edge ], [ %sub.ptr.lhs.cast145, %if.end4.preheader ]
  %s.addr.0139152 = phi i8* [ %s.addr.1, %cleanup86.if.end4_crit_edge ], [ %s, %if.end4.preheader ]
  %argc.0140151 = phi i32 [ %argc.1, %cleanup86.if.end4_crit_edge ], [ 0, %if.end4.preheader ]
  %call142150 = phi i8* [ %call, %cleanup86.if.end4_crit_edge ], [ %call137, %if.end4.preheader ]
  %1 = load i8*, i8** %p.addr, align 8
  %sub.ptr.rhs.cast10 = ptrtoint i8* %1 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast153, %sub.ptr.rhs.cast10
  %add.ptr = getelementptr i8, i8* %s.addr.0139152, i64 %sub.ptr.sub11
  %add.ptr12 = getelementptr i8, i8* %call142150, i64 1
  store i8* %add.ptr12, i8** %p.addr, align 8
  %2 = load i8, i8* %add.ptr12, align 1
  %conv13 = zext i8 %2 to i32
  %call14 = call fastcc i32 @isdigit(i32 noundef %conv13) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end8
  %call17 = call i64 @simple_strtoul(i8* noundef %add.ptr12, i8** noundef nonnull %p.addr, i32 noundef 10) #6
  %conv18 = trunc i64 %call17 to i32
  br label %if.end30

if.else:                                          ; preds = %if.end8
  %cmp20 = icmp eq i8 %2, 37
  br i1 %cmp20, label %if.then22, label %if.end30

if.then22:                                        ; preds = %if.else
  %3 = load i8, i8* %add.ptr, align 1
  %cmp24.not = icmp eq i8 %3, 37
  br i1 %cmp24.not, label %if.end27, label %cleanup88

if.end27:                                         ; preds = %if.then22
  %incdec.ptr = getelementptr i8, i8* %add.ptr, i64 1
  %incdec.ptr28 = getelementptr i8, i8* %call142150, i64 2
  store i8* %incdec.ptr28, i8** %p.addr, align 8
  br label %cleanup86

if.end30:                                         ; preds = %if.else, %if.then16
  %len.0 = phi i32 [ %conv18, %if.then16 ], [ -1, %if.else ]
  %cmp31 = icmp sgt i32 %argc.0140151, 2
  br i1 %cmp31, label %cleanup88, label %if.end34

if.end34:                                         ; preds = %if.end30
  %idxprom = sext i32 %argc.0140151 to i64
  %from = getelementptr %struct.substring_t, %struct.substring_t* %args, i64 %idxprom, i32 0
  store i8* %add.ptr, i8** %from, align 8
  %4 = load i8*, i8** %p.addr, align 8
  %incdec.ptr35 = getelementptr i8, i8* %4, i64 1
  store i8* %incdec.ptr35, i8** %p.addr, align 8
  %5 = load i8, i8* %4, align 1
  switch i8 %5, label %cleanup88 [
    i8 115, label %sw.bb
    i8 100, label %sw.bb53
    i8 117, label %sw.bb58
    i8 111, label %sw.bb63
    i8 120, label %sw.bb68
  ]

sw.bb:                                            ; preds = %if.end34
  %call37 = call i64 @strlen(i8* noundef %add.ptr) #6
  %cmp38 = icmp eq i64 %call37, 0
  br i1 %cmp38, label %cleanup88, label %cleanup

cleanup:                                          ; preds = %sw.bb
  %cmp42 = icmp eq i32 %len.0, -1
  %conv44 = sext i32 %len.0 to i64
  %cmp45 = icmp ult i64 %call37, %conv44
  %or.cond = select i1 %cmp42, i1 true, i1 %cmp45
  %conv48 = trunc i64 %call37 to i32
  %len.1 = select i1 %or.cond, i32 %conv48, i32 %len.0
  %idx.ext = sext i32 %len.1 to i64
  %add.ptr50 = getelementptr i8, i8* %add.ptr, i64 %idx.ext
  %to = getelementptr %struct.substring_t, %struct.substring_t* %args, i64 %idxprom, i32 1
  store i8* %add.ptr50, i8** %to, align 8
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end34
  %to56 = getelementptr %struct.substring_t, %struct.substring_t* %args, i64 %idxprom, i32 1
  %call57 = call i64 @simple_strtol(i8* noundef %add.ptr, i8** noundef %to56, i32 noundef 0) #6
  br label %num

sw.bb58:                                          ; preds = %if.end34
  %to61 = getelementptr %struct.substring_t, %struct.substring_t* %args, i64 %idxprom, i32 1
  %call62 = call i64 @simple_strtoul(i8* noundef %add.ptr, i8** noundef %to61, i32 noundef 0) #6
  br label %num

sw.bb63:                                          ; preds = %if.end34
  %to66 = getelementptr %struct.substring_t, %struct.substring_t* %args, i64 %idxprom, i32 1
  %call67 = call i64 @simple_strtoul(i8* noundef %add.ptr, i8** noundef %to66, i32 noundef 8) #6
  br label %num

sw.bb68:                                          ; preds = %if.end34
  %to71 = getelementptr %struct.substring_t, %struct.substring_t* %args, i64 %idxprom, i32 1
  %call72 = call i64 @simple_strtoul(i8* noundef %add.ptr, i8** noundef %to71, i32 noundef 16) #6
  br label %num

num:                                              ; preds = %sw.bb68, %sw.bb63, %sw.bb58, %sw.bb53
  %to75 = getelementptr %struct.substring_t, %struct.substring_t* %args, i64 %idxprom, i32 1
  %6 = load i8*, i8** %to75, align 8
  %7 = load i8*, i8** %from, align 8
  %cmp79 = icmp eq i8* %6, %7
  br i1 %cmp79, label %cleanup88, label %sw.epilog

sw.epilog:                                        ; preds = %cleanup, %num
  %8 = phi i8* [ %add.ptr50, %cleanup ], [ %6, %num ]
  %inc = add nsw i32 %argc.0140151, 1
  %.pre143 = load i8*, i8** %p.addr, align 8
  br label %cleanup86

cleanup86:                                        ; preds = %sw.epilog, %if.end27
  %9 = phi i8* [ %.pre143, %sw.epilog ], [ %incdec.ptr28, %if.end27 ]
  %s.addr.1 = phi i8* [ %8, %sw.epilog ], [ %incdec.ptr, %if.end27 ]
  %argc.1 = phi i32 [ %inc, %sw.epilog ], [ %argc.0140151, %if.end27 ]
  %call = call i8* @strchr(i8* noundef %9, i32 noundef 37) #6
  %tobool1.not = icmp eq i8* %call, null
  %.pre144 = load i8*, i8** %p.addr, align 8
  br i1 %tobool1.not, label %if.then2, label %cleanup86.if.end4_crit_edge

cleanup86.if.end4_crit_edge:                      ; preds = %cleanup86
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %.pre144 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call5 = call i32 @strncmp(i8* noundef %.pre144, i8* noundef %s.addr.1, i64 noundef %sub.ptr.sub) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup88

cleanup88:                                        ; preds = %cleanup86.if.end4_crit_edge, %if.then22, %if.end30, %num, %if.end34, %sw.bb, %if.end4.preheader, %if.then2, %entry
  %retval.4 = phi i32 [ 1, %entry ], [ %conv, %if.then2 ], [ 0, %if.end4.preheader ], [ 0, %sw.bb ], [ 0, %if.end34 ], [ 0, %num ], [ 0, %if.end30 ], [ 0, %if.then22 ], [ 0, %cleanup86.if.end4_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @match_int(%struct.substring_t* nocapture noundef readonly %s, i32* nocapture noundef writeonly %result) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @match_number(%struct.substring_t* noundef %s, i32* noundef %result, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @match_number(%struct.substring_t* nocapture noundef readonly %s, i32* nocapture noundef writeonly %result, i32 noundef %base) unnamed_addr #0 {
entry:
  %endp = alloca i8*, align 8
  %0 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %endp, align 8, !annotation !7
  %call = call i8* @match_strdup(%struct.substring_t* noundef %s) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i64 @simple_strtol(i8* noundef nonnull %call, i8** noundef nonnull %endp, i32 noundef %base) #6
  %1 = load i8*, i8** %endp, align 8
  %cmp = icmp eq i8* %1, %call
  br i1 %cmp, label %if.end8, label %if.else

if.else:                                          ; preds = %if.end
  %2 = add i64 %call1, -2147483648
  %3 = icmp ult i64 %2, -4294967296
  br i1 %3, label %if.end8, label %if.else6

if.else6:                                         ; preds = %if.else
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %result, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end, %if.else6
  %ret.0 = phi i32 [ 0, %if.else6 ], [ -22, %if.end ], [ -34, %if.else ]
  call void @kfree(i8* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i32 [ %ret.0, %if.end8 ], [ -12, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @match_uint(%struct.substring_t* nocapture noundef readonly %s, i32* noundef %result) local_unnamed_addr #0 {
entry:
  %call = call i8* @match_strdup(%struct.substring_t* noundef %s) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @kstrtouint(i8* noundef nonnull %call, i32 noundef 10, i32* noundef %result) #6
  call void @kfree(i8* noundef nonnull %call) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %err.0 = phi i32 [ %call1, %if.then ], [ -12, %entry ]
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @match_strdup(%struct.substring_t* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %from = getelementptr inbounds %struct.substring_t, %struct.substring_t* %s, i64 0, i32 0
  %0 = load i8*, i8** %from, align 8
  %to = getelementptr inbounds %struct.substring_t, %struct.substring_t* %s, i64 0, i32 1
  %1 = load i8*, i8** %to, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i8* @kmemdup_nul(i8* noundef %0, i64 noundef %sub.ptr.sub, i32 noundef 3264) #6
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @match_u64(%struct.substring_t* nocapture noundef readonly %s, i64* nocapture noundef writeonly %result) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @match_u64int(%struct.substring_t* noundef %s, i64* noundef %result) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @match_u64int(%struct.substring_t* nocapture noundef readonly %s, i64* nocapture noundef writeonly %result) unnamed_addr #0 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i64 0, i64* %val, align 8, !annotation !7
  %call = call i8* @match_strdup(%struct.substring_t* noundef %s) #5
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtoull(i8* noundef nonnull %call, i32 noundef 0, i64* noundef nonnull %val) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %1 = load i64, i64* %val, align 8
  store i64 %1, i64* %result, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @kfree(i8* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i32 [ %call1, %if.end4 ], [ -12, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @match_octal(%struct.substring_t* nocapture noundef readonly %s, i32* nocapture noundef writeonly %result) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @match_number(%struct.substring_t* noundef %s, i32* noundef %result, i32 noundef 8) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @match_hex(%struct.substring_t* nocapture noundef readonly %s, i32* nocapture noundef writeonly %result) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @match_number(%struct.substring_t* noundef %s, i32* noundef %result, i32 noundef 16) #5
  ret i32 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i1 @match_wildcard(i8* nocapture noundef readonly %pattern, i8* nocapture noundef readonly %str) local_unnamed_addr #3 {
entry:
  %0 = load i8, i8* %str, align 1
  %tobool.not46 = icmp eq i8 %0, 0
  br i1 %tobool.not46, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %1 = phi i8 [ %4, %sw.epilog ], [ %0, %entry ]
  %star.0.off051 = phi i1 [ %star.1.off0, %sw.epilog ], [ false, %entry ]
  %p.050 = phi i8* [ %p.1, %sw.epilog ], [ %pattern, %entry ]
  %s.049 = phi i8* [ %s.1, %sw.epilog ], [ %str, %entry ]
  %str.addr.048 = phi i8* [ %str.addr.1, %sw.epilog ], [ %str, %entry ]
  %pattern.addr.047 = phi i8* [ %pattern.addr.1, %sw.epilog ], [ %pattern, %entry ]
  %2 = load i8, i8* %p.050, align 1
  switch i8 %2, label %sw.default [
    i8 63, label %sw.bb
    i8 42, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  %incdec.ptr = getelementptr i8, i8* %s.049, i64 1
  %incdec.ptr1 = getelementptr i8, i8* %p.050, i64 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %incdec.ptr3 = getelementptr i8, i8* %p.050, i64 1
  %3 = load i8, i8* %incdec.ptr3, align 1
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %cleanup, label %sw.epilog

sw.default:                                       ; preds = %while.body
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %sw.default
  %incdec.ptr9 = getelementptr i8, i8* %s.049, i64 1
  %incdec.ptr10 = getelementptr i8, i8* %p.050, i64 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  br i1 %star.0.off051, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.else
  %incdec.ptr14 = getelementptr i8, i8* %str.addr.048, i64 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.then8, %if.end13, %sw.bb
  %pattern.addr.1 = phi i8* [ %pattern.addr.047, %if.then8 ], [ %pattern.addr.047, %if.end13 ], [ %pattern.addr.047, %sw.bb ], [ %incdec.ptr3, %sw.bb2 ]
  %str.addr.1 = phi i8* [ %str.addr.048, %if.then8 ], [ %incdec.ptr14, %if.end13 ], [ %str.addr.048, %sw.bb ], [ %s.049, %sw.bb2 ]
  %s.1 = phi i8* [ %incdec.ptr9, %if.then8 ], [ %incdec.ptr14, %if.end13 ], [ %incdec.ptr, %sw.bb ], [ %s.049, %sw.bb2 ]
  %p.1 = phi i8* [ %incdec.ptr10, %if.then8 ], [ %pattern.addr.047, %if.end13 ], [ %incdec.ptr1, %sw.bb ], [ %incdec.ptr3, %sw.bb2 ]
  %star.1.off0 = phi i1 [ %star.0.off051, %if.then8 ], [ true, %if.end13 ], [ %star.0.off051, %sw.bb ], [ true, %sw.bb2 ]
  %4 = load i8, i8* %s.1, align 1
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %sw.epilog, %entry
  %p.0.lcssa = phi i8* [ %pattern, %entry ], [ %p.1, %sw.epilog ]
  %5 = load i8, i8* %p.0.lcssa, align 1
  %cmp17 = icmp eq i8 %5, 42
  %spec.select.idx = zext i1 %cmp17 to i64
  %spec.select = getelementptr i8, i8* %p.0.lcssa, i64 %spec.select.idx
  %6 = load i8, i8* %spec.select, align 1
  %tobool22.not = icmp eq i8 %6, 0
  br label %cleanup

cleanup:                                          ; preds = %if.else, %sw.bb2, %while.end
  %retval.0 = phi i1 [ %tobool22.not, %while.end ], [ false, %if.else ], [ true, %sw.bb2 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @match_strlcpy(i8* noundef %dest, %struct.substring_t* nocapture noundef readonly %src, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %to = getelementptr inbounds %struct.substring_t, %struct.substring_t* %src, i64 0, i32 1
  %0 = load i8*, i8** %to, align 8
  %from = getelementptr inbounds %struct.substring_t, %struct.substring_t* %src, i64 0, i32 0
  %1 = load i8*, i8** %from, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp.not = icmp ult i64 %sub.ptr.sub, %size
  %sub = add i64 %size, -1
  %cond = select i1 %cmp.not, i64 %sub.ptr.sub, i64 %sub
  %call = call i8* @memcpy(i8* noundef %dest, i8* noundef %1, i64 noundef %cond) #6
  %arrayidx = getelementptr i8, i8* %dest, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %sub.ptr.sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kmemdup_nul(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #4 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtol(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

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
