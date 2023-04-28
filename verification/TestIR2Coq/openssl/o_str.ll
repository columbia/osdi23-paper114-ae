; ModuleID = 'crypto/o_str.c'
source_filename = "crypto/o_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"crypto/o_str.c\00", align 1
@__func__.CRYPTO_memdup = private unnamed_addr constant [14 x i8] c"CRYPTO_memdup\00", align 1
@__func__.ossl_hexstr2buf_sep = private unnamed_addr constant [20 x i8] c"ossl_hexstr2buf_sep\00", align 1
@__func__.ossl_buf2hexstr_sep = private unnamed_addr constant [20 x i8] c"ossl_buf2hexstr_sep\00", align 1
@__func__.hexstr2buf_sep = private unnamed_addr constant [15 x i8] c"hexstr2buf_sep\00", align 1
@buf2hexstr_sep.hexdig = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@__func__.buf2hexstr_sep = private unnamed_addr constant [15 x i8] c"buf2hexstr_sep\00", align 1
@switch.table.OPENSSL_hexchar2int = private unnamed_addr constant [55 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_strdup(i8* noundef %str, i8* noundef %file, i32 noundef %line) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %str, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %str) #8
  %add = add i64 %call, 1
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef %file, i32 noundef %line) #9
  %cmp2.not = icmp eq i8* %call1, null
  br i1 %cmp2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @strcpy(i8* noundef nonnull %call1, i8* noundef nonnull %str) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %call1, %if.then3 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_strndup(i8* noundef %str, i64 noundef %s, i8* noundef %file, i32 noundef %line) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %str, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @OPENSSL_strnlen(i8* noundef nonnull %str, i64 noundef %s) #10
  %add = add i64 %call, 1
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef %file, i32 noundef %line) #9
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i8* @memcpy(i8* noundef nonnull %call1, i8* noundef nonnull %str, i64 noundef %call) #9
  %arrayidx = getelementptr inbounds i8, i8* %call1, i64 %call
  store i8 0, i8* %arrayidx, align 1, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %call1, %if.then2 ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i64 @OPENSSL_strnlen(i8* noundef %str, i64 noundef %maxlen) local_unnamed_addr #5 {
entry:
  %cmp.not8 = icmp eq i64 %maxlen, 0
  br i1 %cmp.not8, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %scevgep = getelementptr i8, i8* %str, i64 %maxlen
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %for.inc
  %dec10.in = phi i64 [ %dec10, %for.inc ], [ %maxlen, %land.rhs.preheader ]
  %p.09 = phi i8* [ %incdec.ptr, %for.inc ], [ %str, %land.rhs.preheader ]
  %dec10 = add i64 %dec10.in, -1
  %0 = load i8, i8* %p.09, align 1, !tbaa !4
  %cmp1.not = icmp eq i8 %0, 0
  br i1 %cmp1.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %p.09, i64 1
  %cmp.not = icmp eq i64 %dec10, 0
  br i1 %cmp.not, label %for.end, label %land.rhs, !llvm.loop !7

for.end:                                          ; preds = %land.rhs, %for.inc, %entry
  %p.0.lcssa = phi i8* [ %str, %entry ], [ %scevgep, %for.inc ], [ %p.09, %land.rhs ]
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %str to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_memdup(i8* noundef %data, i64 noundef %siz, i8* noundef %file, i32 noundef %line) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %data, null
  %cmp1 = icmp ugt i64 %siz, 2147483646
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %siz, i8* noundef %file, i32 noundef %line) #9
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.CRYPTO_memdup, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %data, i64 noundef %siz) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i8* [ null, %if.then3 ], [ %call5, %if.end4 ], [ null, %entry ]
  ret i8* %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define i64 @OPENSSL_strlcpy(i8* nocapture noundef writeonly %dst, i8* noundef %src, i64 noundef %size) local_unnamed_addr #6 {
entry:
  %cmp20 = icmp ugt i64 %size, 1
  br i1 %cmp20, label %land.rhs.preheader, label %for.end

land.rhs.preheader:                               ; preds = %entry
  %0 = add i64 %size, -1
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %for.body
  %l.024 = phi i64 [ %inc, %for.body ], [ 0, %land.rhs.preheader ]
  %src.addr.022 = phi i8* [ %incdec.ptr, %for.body ], [ %src, %land.rhs.preheader ]
  %dst.addr.021 = phi i8* [ %incdec.ptr1, %for.body ], [ %dst, %land.rhs.preheader ]
  %1 = load i8, i8* %src.addr.022, align 1, !tbaa !4
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %for.body

for.body:                                         ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %src.addr.022, i64 1
  %incdec.ptr1 = getelementptr inbounds i8, i8* %dst.addr.021, i64 1
  store i8 %1, i8* %dst.addr.021, align 1, !tbaa !4
  %inc = add nuw i64 %l.024, 1
  %exitcond.not = icmp eq i64 %inc, %0
  br i1 %exitcond.not, label %if.then, label %land.rhs, !llvm.loop !9

for.end:                                          ; preds = %entry
  %tobool2.not = icmp eq i64 %size, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body, %land.rhs, %for.end
  %dst.addr.019 = phi i8* [ %dst, %for.end ], [ %incdec.ptr1, %for.body ], [ %dst.addr.021, %land.rhs ]
  %src.addr.016 = phi i8* [ %src, %for.end ], [ %incdec.ptr, %for.body ], [ %src.addr.022, %land.rhs ]
  %l.012 = phi i64 [ 0, %for.end ], [ %0, %for.body ], [ %l.024, %land.rhs ]
  store i8 0, i8* %dst.addr.019, align 1, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %src.addr.017 = phi i8* [ %src.addr.016, %if.then ], [ %src, %for.end ]
  %l.013 = phi i64 [ %l.012, %if.then ], [ 0, %for.end ]
  %call = tail call i64 @strlen(i8* noundef %src.addr.017) #8
  %add = add i64 %call, %l.013
  ret i64 %add
}

; Function Attrs: nofree noinline nounwind uwtable
define i64 @OPENSSL_strlcat(i8* nocapture noundef %dst, i8* noundef %src, i64 noundef %size) local_unnamed_addr #6 {
entry:
  %cmp.not7 = icmp eq i64 %size, 0
  br i1 %cmp.not7, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %scevgep = getelementptr i8, i8* %dst, i64 %size
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %for.body
  %l.010 = phi i64 [ %inc, %for.body ], [ 0, %land.rhs.preheader ]
  %size.addr.09 = phi i64 [ %dec, %for.body ], [ %size, %land.rhs.preheader ]
  %dst.addr.08 = phi i8* [ %incdec.ptr, %for.body ], [ %dst, %land.rhs.preheader ]
  %0 = load i8, i8* %dst.addr.08, align 1, !tbaa !4
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %inc = add nuw i64 %l.010, 1
  %dec = add i64 %size.addr.09, -1
  %incdec.ptr = getelementptr inbounds i8, i8* %dst.addr.08, i64 1
  %cmp.not = icmp eq i64 %dec, 0
  br i1 %cmp.not, label %for.end, label %land.rhs, !llvm.loop !10

for.end:                                          ; preds = %land.rhs, %for.body, %entry
  %dst.addr.0.lcssa = phi i8* [ %dst, %entry ], [ %scevgep, %for.body ], [ %dst.addr.08, %land.rhs ]
  %size.addr.0.lcssa = phi i64 [ 0, %entry ], [ 0, %for.body ], [ %size.addr.09, %land.rhs ]
  %l.0.lcssa = phi i64 [ 0, %entry ], [ %size, %for.body ], [ %l.010, %land.rhs ]
  %call = tail call i64 @OPENSSL_strlcpy(i8* noundef %dst.addr.0.lcssa, i8* noundef %src, i64 noundef %size.addr.0.lcssa) #10
  %add = add i64 %call, %l.0.lcssa
  ret i64 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @OPENSSL_hexchar2int(i8 noundef zeroext %c) local_unnamed_addr #7 {
entry:
  %switch.tableidx = add i8 %c, -48
  %0 = icmp ult i8 %switch.tableidx, 55
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [55 x i32], [55 x i32]* @switch.table.OPENSSL_hexchar2int, i64 0, i64 %1
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_hexstr2buf_ex(i8* noundef %buf, i64 noundef %buf_n, i64* noundef %buflen, i8* nocapture noundef readonly %str, i8 noundef signext %sep) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @hexstr2buf_sep(i8* noundef %buf, i64 noundef %buf_n, i64* noundef %buflen, i8* noundef %str, i8 noundef signext %sep) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @hexstr2buf_sep(i8* noundef writeonly %buf, i64 noundef %buf_n, i64* noundef writeonly %buflen, i8* nocapture noundef readonly %str, i8 noundef signext %sep) unnamed_addr #0 {
entry:
  %conv1 = sext i8 %sep to i32
  %cmp4 = icmp ne i8 %sep, 0
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %entry
  %q.0.ph = phi i8* [ %buf, %entry ], [ %q.0.ph.be, %for.cond.outer.backedge ]
  %p.0.ph = phi i8* [ %str, %entry ], [ %incdec.ptr6, %for.cond.outer.backedge ]
  %cnt.0.ph = phi i64 [ 0, %entry ], [ %inc, %for.cond.outer.backedge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.body
  %p.0 = phi i8* [ %incdec.ptr, %for.body ], [ %p.0.ph, %for.cond.outer ]
  %0 = load i8, i8* %p.0, align 1, !tbaa !4
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, %conv1
  %or.cond = and i1 %cmp4, %cmp
  br i1 %or.cond, label %for.cond, label %if.end, !llvm.loop !11

if.end:                                           ; preds = %for.body
  %incdec.ptr6 = getelementptr inbounds i8, i8* %p.0, i64 2
  %1 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %tobool7.not = icmp eq i8 %1, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.hexstr2buf_sep, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 103, i8* noundef null) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %1) #10
  %call10 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %0) #10
  %cmp11 = icmp slt i32 %call, 0
  %cmp13 = icmp slt i32 %call10, 0
  %or.cond37 = select i1 %cmp11, i1 true, i1 %cmp13
  br i1 %or.cond37, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end9
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.hexstr2buf_sep, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 102, i8* noundef null) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %inc = add i64 %cnt.0.ph, 1
  %cmp17.not = icmp eq i8* %q.0.ph, null
  br i1 %cmp17.not, label %for.cond.outer.backedge, label %if.then19

if.then19:                                        ; preds = %if.end16
  %cmp20 = icmp ugt i64 %inc, %buf_n
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.hexstr2buf_sep, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 116, i8* noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %if.then19
  %shl = shl i32 %call10, 4
  %or = or i32 %shl, %call
  %conv24 = trunc i32 %or to i8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %q.0.ph, i64 1
  store i8 %conv24, i8* %q.0.ph, align 1, !tbaa !4
  br label %for.cond.outer.backedge

for.cond.outer.backedge:                          ; preds = %if.end23, %if.end16
  %q.0.ph.be = phi i8* [ %incdec.ptr25, %if.end23 ], [ null, %if.end16 ]
  br label %for.cond.outer, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %cmp27.not = icmp eq i64* %buflen, null
  br i1 %cmp27.not, label %cleanup, label %if.then29

if.then29:                                        ; preds = %for.end
  store i64 %cnt.0.ph, i64* %buflen, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then29, %if.then22, %if.then15, %if.then8
  %retval.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then22 ], [ 0, %if.then8 ], [ 1, %if.then29 ], [ 1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_hexstr2buf_sep(i8* noundef %str, i64* noundef writeonly %buflen, i8 noundef signext %sep) local_unnamed_addr #0 {
entry:
  %tmp_buflen = alloca i64, align 8
  %0 = bitcast i64* %tmp_buflen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %call = tail call i64 @strlen(i8* noundef %str) #8
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_hexstr2buf_sep, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 121, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = lshr i64 %call, 1
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %div, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 196) #9
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_hexstr2buf_sep, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5.not = icmp eq i64* %buflen, null
  br i1 %cmp5.not, label %if.end7, label %if.end7.thread

if.end7:                                          ; preds = %if.end4
  store i64 0, i64* %tmp_buflen, align 8, !tbaa !12
  %call8 = call fastcc i32 @hexstr2buf_sep(i8* noundef nonnull %call1, i64 noundef %div, i64* noundef nonnull %tmp_buflen, i8* noundef %str, i8 noundef signext %sep) #10
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end13, label %cleanup

if.end7.thread:                                   ; preds = %if.end4
  store i64 0, i64* %buflen, align 8, !tbaa !12
  store i64 0, i64* %tmp_buflen, align 8, !tbaa !12
  %call827 = call fastcc i32 @hexstr2buf_sep(i8* noundef nonnull %call1, i64 noundef %div, i64* noundef nonnull %tmp_buflen, i8* noundef %str, i8 noundef signext %sep) #10
  %tobool.not28 = icmp eq i32 %call827, 0
  br i1 %tobool.not28, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end7.thread
  %1 = load i64, i64* %tmp_buflen, align 8, !tbaa !12
  store i64 %1, i64* %buflen, align 8, !tbaa !12
  br label %cleanup

if.end13:                                         ; preds = %if.end7.thread, %if.end7
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 209) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then11, %if.end13, %if.then3, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then3 ], [ null, %if.end13 ], [ %call1, %if.then11 ], [ %call1, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i8* %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_hexstr2buf(i8* noundef %str, i64* noundef %buflen) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_hexstr2buf_sep(i8* noundef %str, i64* noundef %buflen, i8 noundef signext 58) #10
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_buf2hexstr_ex(i8* noundef %str, i64 noundef %str_n, i64* noundef %strlen, i8* nocapture noundef readonly %buf, i64 noundef %buflen, i8 noundef signext %sep) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @buf2hexstr_sep(i8* noundef %str, i64 noundef %str_n, i64* noundef %strlen, i8* noundef %buf, i64 noundef %buflen, i8 noundef signext %sep) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @buf2hexstr_sep(i8* noundef writeonly %str, i64 noundef %str_n, i64* noundef writeonly %strlen, i8* nocapture noundef readonly %buf, i64 noundef %buflen, i8 noundef signext %sep) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8 %sep, 0
  %mul = mul i64 %buflen, 3
  %mul2 = shl i64 %buflen, 1
  %add = or i64 %mul2, 1
  %cond = select i1 %cmp.not, i64 %add, i64 %mul
  %cmp3.not = icmp eq i64* %strlen, null
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 %cond, i64* %strlen, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp5 = icmp eq i8* %str, null
  br i1 %cmp5, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp ugt i64 %cond, %str_n
  br i1 %cmp9, label %if.then11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %cmp1354.not = icmp eq i64 %buflen, 0
  br i1 %cmp1354.not, label %for.end, label %for.body

if.then11:                                        ; preds = %if.end8
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.buf2hexstr_sep, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 116, i8* noundef null) #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %p.057 = phi i8* [ %incdec.ptr25, %for.inc ], [ %buf, %for.cond.preheader ]
  %i.056 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %q.055 = phi i8* [ %q.1, %for.inc ], [ %str, %for.cond.preheader ]
  %0 = load i8, i8* %p.057, align 1, !tbaa !4
  %1 = lshr i8 %0, 4
  %2 = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* @buf2hexstr_sep.hexdig, i64 0, i64 %2
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %q.055, i64 1
  store i8 %3, i8* %q.055, align 1, !tbaa !4
  %4 = load i8, i8* %p.057, align 1, !tbaa !4
  %5 = and i8 %4, 15
  %6 = zext i8 %5 to i64
  %arrayidx19 = getelementptr inbounds [17 x i8], [17 x i8]* @buf2hexstr_sep.hexdig, i64 0, i64 %6
  %7 = load i8, i8* %arrayidx19, align 1, !tbaa !4
  %incdec.ptr20 = getelementptr inbounds i8, i8* %q.055, i64 2
  store i8 %7, i8* %incdec.ptr, align 1, !tbaa !4
  br i1 %cmp.not, label %for.inc, label %if.then22

if.then22:                                        ; preds = %for.body
  %incdec.ptr23 = getelementptr inbounds i8, i8* %q.055, i64 3
  store i8 %sep, i8* %incdec.ptr20, align 1, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then22
  %q.1 = phi i8* [ %incdec.ptr23, %if.then22 ], [ %incdec.ptr20, %for.body ]
  %inc = add nuw i64 %i.056, 1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %p.057, i64 1
  %exitcond.not = icmp eq i64 %inc, %buflen
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %q.0.lcssa = phi i8* [ %str, %for.cond.preheader ], [ %q.1, %for.inc ]
  %not.cmp.not = xor i1 %cmp.not, true
  %spec.select.idx = sext i1 %not.cmp.not to i64
  %spec.select = getelementptr i8, i8* %q.0.lcssa, i64 %spec.select.idx
  store i8 0, i8* %spec.select, align 1, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 1, %for.end ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_buf2hexstr_sep(i8* nocapture noundef readonly %buf, i64 noundef %buflen, i8 noundef signext %sep) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %buflen, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 269) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8 %sep, 0
  %mul = mul nsw i64 %buflen, 3
  %mul3 = shl nsw i64 %buflen, 1
  %add = or i64 %mul3, 1
  %cond = select i1 %cmp1.not, i64 %add, i64 %mul
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef %cond, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 272) #9
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_buf2hexstr_sep, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc i32 @buf2hexstr_sep(i8* noundef nonnull %call4, i64 noundef %cond, i64* noundef null, i8* noundef %buf, i64 noundef %buflen, i8 noundef signext %sep) #10
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end8
  tail call void @CRYPTO_free(i8* noundef nonnull %call4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 279) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end11, %if.then7, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ null, %if.then7 ], [ null, %if.end11 ], [ %call4, %if.end8 ]
  ret i8* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_buf2hexstr(i8* nocapture noundef readonly %buf, i64 noundef %buflen) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_buf2hexstr_sep(i8* noundef %buf, i64 noundef %buflen, i8 noundef signext 58) #10
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @openssl_strerror_r(i32 noundef %errnum, i8* noundef %buf, i64 noundef %buflen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @__xpg_strerror_r(i32 noundef %errnum, i8* noundef %buf, i64 noundef %buflen) #9
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind
declare i32 @__xpg_strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = distinct !{!14, !8}
