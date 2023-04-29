; ModuleID = 'lib/earlycpio.c'
source_filename = "lib/earlycpio.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.cpio_data = type { i8*, i64, [18 x i8] }

@.str = private unnamed_addr constant [45 x i8] c"\014File %s exceeding MAX_CPIO_FILE_NAME [%d]\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @find_cpio_data(%struct.cpio_data* noalias sret(%struct.cpio_data) align 8 %agg.result, i8* noundef %path, i8* noundef %data, i64 noundef %len, i64* noundef writeonly %nextoff) local_unnamed_addr #0 {
entry:
  %ch = alloca [14 x i32], align 4
  %0 = bitcast %struct.cpio_data* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %1 = bitcast [14 x i32]* %ch to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(56) %1, i8 0, i64 56, i1 false), !annotation !7
  %call = call i64 @strlen(i8* noundef %path) #6
  %cmp155 = icmp ugt i64 %len, 110
  br i1 %cmp155, label %while.body.lr.ph, label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay = getelementptr inbounds [14 x i32], [14 x i32]* %ch, i64 0, i64 0
  %arrayidx32 = getelementptr inbounds [14 x i32], [14 x i32]* %ch, i64 0, i64 12
  %arrayidx35 = getelementptr inbounds [14 x i32], [14 x i32]* %ch, i64 0, i64 7
  %arrayidx50 = getelementptr inbounds [14 x i32], [14 x i32]* %ch, i64 0, i64 2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %len.addr.0157 = phi i64 [ %len, %while.body.lr.ph ], [ %len.addr.0.be, %while.cond.backedge ]
  %p.0156 = phi i8* [ %data, %while.body.lr.ph ], [ %p.0.be, %while.cond.backedge ]
  %2 = load i8, i8* %p.0156, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %while.cond2.preheader

if.then:                                          ; preds = %while.body
  %add.ptr = getelementptr i8, i8* %p.0156, i64 4
  %sub = add i64 %len.addr.0157, -4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then, %if.end80
  %p.0.be = phi i8* [ %26, %if.end80 ], [ %add.ptr, %if.then ]
  %len.addr.0.be = phi i64 [ %sub81, %if.end80 ], [ %sub, %if.then ]
  %cmp = icmp ugt i64 %len.addr.0.be, 110
  br i1 %cmp, label %while.body, label %cleanup

while.cond2.preheader:                            ; preds = %while.body, %while.end
  %tobool3.not.5 = phi i1 [ false, %while.end ], [ true, %while.body ]
  %j.0153 = phi i64 [ 7, %while.end ], [ 5, %while.body ]
  %i.0152 = phi i32 [ %dec25, %while.end ], [ 14, %while.body ]
  %chp.0151 = phi i32* [ %incdec.ptr24, %while.end ], [ %arraydecay, %while.body ]
  %p.1150 = phi i8* [ %scevgep163, %while.end ], [ %p.0156, %while.body ]
  %scevgep = getelementptr i8, i8* %p.1150, i64 1
  %scevgep163 = getelementptr i8, i8* %scevgep, i64 %j.0153
  %incdec.ptr = getelementptr i8, i8* %p.1150, i64 1
  %3 = load i8, i8* %p.1150, align 1
  %sub5 = add i8 %3, -48
  %cmp8 = icmp ult i8 %sub5, 10
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %while.cond2.preheader
  %conv7 = zext i8 %sub5 to i32
  br label %while.body4.1

while.body4.1:                                    ; preds = %if.then19, %if.then10
  %v.0.be = phi i32 [ %conv7, %if.then10 ], [ %add22, %if.then19 ]
  %shl.1 = shl nsw i32 %v.0.be, 4
  %incdec.ptr.1 = getelementptr i8, i8* %p.1150, i64 2
  %4 = load i8, i8* %incdec.ptr, align 1
  %sub5.1 = add i8 %4, -48
  %cmp8.1 = icmp ult i8 %sub5.1, 10
  br i1 %cmp8.1, label %if.then10.1, label %if.end12.1

if.end12.1:                                       ; preds = %while.body4.1
  %5 = or i8 %4, 32
  %sub14.1 = add i8 %5, -97
  %cmp17.1 = icmp ult i8 %sub14.1, 6
  br i1 %cmp17.1, label %if.then19.1, label %cleanup

if.then19.1:                                      ; preds = %if.end12.1
  %conv16.1 = zext i8 %sub14.1 to i32
  %add21.1 = or i32 %shl.1, 10
  %add22.1 = add nsw i32 %add21.1, %conv16.1
  br label %while.body4.2

if.then10.1:                                      ; preds = %while.body4.1
  %conv7.1 = zext i8 %sub5.1 to i32
  %add.1 = add nuw nsw i32 %shl.1, %conv7.1
  br label %while.body4.2

while.body4.2:                                    ; preds = %if.then19.1, %if.then10.1
  %v.0.be.1 = phi i32 [ %add.1, %if.then10.1 ], [ %add22.1, %if.then19.1 ]
  %shl.2 = shl i32 %v.0.be.1, 4
  %incdec.ptr.2 = getelementptr i8, i8* %p.1150, i64 3
  %6 = load i8, i8* %incdec.ptr.1, align 1
  %sub5.2 = add i8 %6, -48
  %cmp8.2 = icmp ult i8 %sub5.2, 10
  br i1 %cmp8.2, label %if.then10.2, label %if.end12.2

if.end12.2:                                       ; preds = %while.body4.2
  %7 = or i8 %6, 32
  %sub14.2 = add i8 %7, -97
  %cmp17.2 = icmp ult i8 %sub14.2, 6
  br i1 %cmp17.2, label %if.then19.2, label %cleanup

if.then19.2:                                      ; preds = %if.end12.2
  %conv16.2 = zext i8 %sub14.2 to i32
  %add21.2 = or i32 %shl.2, 10
  %add22.2 = add i32 %add21.2, %conv16.2
  br label %while.body4.3

if.then10.2:                                      ; preds = %while.body4.2
  %conv7.2 = zext i8 %sub5.2 to i32
  %add.2 = add nuw i32 %shl.2, %conv7.2
  br label %while.body4.3

while.body4.3:                                    ; preds = %if.then19.2, %if.then10.2
  %v.0.be.2 = phi i32 [ %add.2, %if.then10.2 ], [ %add22.2, %if.then19.2 ]
  %shl.3 = shl i32 %v.0.be.2, 4
  %incdec.ptr.3 = getelementptr i8, i8* %p.1150, i64 4
  %8 = load i8, i8* %incdec.ptr.2, align 1
  %sub5.3 = add i8 %8, -48
  %cmp8.3 = icmp ult i8 %sub5.3, 10
  br i1 %cmp8.3, label %if.then10.3, label %if.end12.3

if.end12.3:                                       ; preds = %while.body4.3
  %9 = or i8 %8, 32
  %sub14.3 = add i8 %9, -97
  %cmp17.3 = icmp ult i8 %sub14.3, 6
  br i1 %cmp17.3, label %if.then19.3, label %cleanup

if.then19.3:                                      ; preds = %if.end12.3
  %conv16.3 = zext i8 %sub14.3 to i32
  %add21.3 = or i32 %shl.3, 10
  %add22.3 = add i32 %add21.3, %conv16.3
  br label %while.body4.4

if.then10.3:                                      ; preds = %while.body4.3
  %conv7.3 = zext i8 %sub5.3 to i32
  %add.3 = add nuw i32 %shl.3, %conv7.3
  br label %while.body4.4

while.body4.4:                                    ; preds = %if.then19.3, %if.then10.3
  %v.0.be.3 = phi i32 [ %add.3, %if.then10.3 ], [ %add22.3, %if.then19.3 ]
  %shl.4 = shl i32 %v.0.be.3, 4
  %incdec.ptr.4 = getelementptr i8, i8* %p.1150, i64 5
  %10 = load i8, i8* %incdec.ptr.3, align 1
  %sub5.4 = add i8 %10, -48
  %cmp8.4 = icmp ult i8 %sub5.4, 10
  br i1 %cmp8.4, label %if.then10.4, label %if.end12.4

if.end12.4:                                       ; preds = %while.body4.4
  %11 = or i8 %10, 32
  %sub14.4 = add i8 %11, -97
  %cmp17.4 = icmp ult i8 %sub14.4, 6
  br i1 %cmp17.4, label %if.then19.4, label %cleanup

if.then19.4:                                      ; preds = %if.end12.4
  %conv16.4 = zext i8 %sub14.4 to i32
  %add21.4 = or i32 %shl.4, 10
  %add22.4 = add i32 %add21.4, %conv16.4
  br label %while.body4.5

if.then10.4:                                      ; preds = %while.body4.4
  %conv7.4 = zext i8 %sub5.4 to i32
  %add.4 = add nuw i32 %shl.4, %conv7.4
  br label %while.body4.5

while.body4.5:                                    ; preds = %if.then19.4, %if.then10.4
  %v.0.be.4 = phi i32 [ %add.4, %if.then10.4 ], [ %add22.4, %if.then19.4 ]
  %shl.5 = shl i32 %v.0.be.4, 4
  %incdec.ptr.5 = getelementptr i8, i8* %p.1150, i64 6
  %12 = load i8, i8* %incdec.ptr.4, align 1
  %sub5.5 = add i8 %12, -48
  %cmp8.5 = icmp ult i8 %sub5.5, 10
  br i1 %cmp8.5, label %if.then10.5, label %if.end12.5

if.end12.5:                                       ; preds = %while.body4.5
  %13 = or i8 %12, 32
  %sub14.5 = add i8 %13, -97
  %cmp17.5 = icmp ult i8 %sub14.5, 6
  br i1 %cmp17.5, label %if.then19.5, label %cleanup

if.then19.5:                                      ; preds = %if.end12.5
  %conv16.5 = zext i8 %sub14.5 to i32
  %add21.5 = or i32 %shl.5, 10
  %add22.5 = add i32 %add21.5, %conv16.5
  br label %while.cond2.backedge.5

if.then10.5:                                      ; preds = %while.body4.5
  %conv7.5 = zext i8 %sub5.5 to i32
  %add.5 = add nuw i32 %shl.5, %conv7.5
  br label %while.cond2.backedge.5

while.cond2.backedge.5:                           ; preds = %if.then10.5, %if.then19.5
  %v.0.be.5 = phi i32 [ %add.5, %if.then10.5 ], [ %add22.5, %if.then19.5 ]
  br i1 %tobool3.not.5, label %while.end, label %while.body4.6

while.body4.6:                                    ; preds = %while.cond2.backedge.5
  %shl.6 = shl i32 %v.0.be.5, 4
  %incdec.ptr.6 = getelementptr i8, i8* %p.1150, i64 7
  %14 = load i8, i8* %incdec.ptr.5, align 1
  %sub5.6 = add i8 %14, -48
  %cmp8.6 = icmp ult i8 %sub5.6, 10
  br i1 %cmp8.6, label %if.then10.6, label %if.end12.6

if.end12.6:                                       ; preds = %while.body4.6
  %15 = or i8 %14, 32
  %sub14.6 = add i8 %15, -97
  %cmp17.6 = icmp ult i8 %sub14.6, 6
  br i1 %cmp17.6, label %if.then19.6, label %cleanup

if.then19.6:                                      ; preds = %if.end12.6
  %conv16.6 = zext i8 %sub14.6 to i32
  %add21.6 = or i32 %shl.6, 10
  %add22.6 = add i32 %add21.6, %conv16.6
  br label %while.body4.7

if.then10.6:                                      ; preds = %while.body4.6
  %conv7.6 = zext i8 %sub5.6 to i32
  %add.6 = add nuw i32 %shl.6, %conv7.6
  br label %while.body4.7

while.body4.7:                                    ; preds = %if.then19.6, %if.then10.6
  %v.0.be.6 = phi i32 [ %add.6, %if.then10.6 ], [ %add22.6, %if.then19.6 ]
  %shl.7 = shl i32 %v.0.be.6, 4
  %16 = load i8, i8* %incdec.ptr.6, align 1
  %sub5.7 = add i8 %16, -48
  %cmp8.7 = icmp ult i8 %sub5.7, 10
  br i1 %cmp8.7, label %if.then10.7, label %if.end12.7

if.end12.7:                                       ; preds = %while.body4.7
  %17 = or i8 %16, 32
  %sub14.7 = add i8 %17, -97
  %cmp17.7 = icmp ult i8 %sub14.7, 6
  br i1 %cmp17.7, label %if.then19.7, label %cleanup

if.then19.7:                                      ; preds = %if.end12.7
  %conv16.7 = zext i8 %sub14.7 to i32
  %add21.7 = or i32 %shl.7, 10
  %add22.7 = add i32 %add21.7, %conv16.7
  br label %while.end

if.then10.7:                                      ; preds = %while.body4.7
  %conv7.7 = zext i8 %sub5.7 to i32
  %add.7 = add nuw i32 %shl.7, %conv7.7
  br label %while.end

if.end12:                                         ; preds = %while.cond2.preheader
  %18 = or i8 %3, 32
  %sub14 = add i8 %18, -97
  %cmp17 = icmp ult i8 %sub14, 6
  br i1 %cmp17, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.end12
  %conv16 = zext i8 %sub14 to i32
  %add22 = add nuw nsw i32 %conv16, 10
  br label %while.body4.1

while.end:                                        ; preds = %if.then19.7, %if.then10.7, %while.cond2.backedge.5
  %v.0.be.lcssa = phi i32 [ %v.0.be.5, %while.cond2.backedge.5 ], [ %add.7, %if.then10.7 ], [ %add22.7, %if.then19.7 ]
  %incdec.ptr24 = getelementptr i32, i32* %chp.0151, i64 1
  store i32 %v.0.be.lcssa, i32* %chp.0151, align 4
  %dec25 = add nsw i32 %i.0152, -1
  %tobool1.not = icmp eq i32 %dec25, 0
  br i1 %tobool1.not, label %for.end, label %while.cond2.preheader

for.end:                                          ; preds = %while.end
  %19 = load i32, i32* %arraydecay, align 4
  %20 = add i32 %19, -460547
  %cmp27 = icmp ult i32 %20, -2
  br i1 %cmp27, label %cleanup, label %if.end30

if.end30:                                         ; preds = %for.end
  %sub31 = add i64 %len.addr.0157, -110
  %21 = load i32, i32* %arrayidx32, align 4
  %idx.ext = zext i32 %21 to i64
  %add.ptr33 = getelementptr i8, i8* %scevgep163, i64 %idx.ext
  %22 = ptrtoint i8* %add.ptr33 to i64
  %add34 = add i64 %22, 3
  %and = and i64 %add34, -4
  %23 = inttoptr i64 %and to i8*
  %24 = load i32, i32* %arrayidx35, align 4
  %idx.ext36 = zext i32 %24 to i64
  %add.ptr37 = getelementptr i8, i8* %23, i64 %idx.ext36
  %25 = ptrtoint i8* %add.ptr37 to i64
  %add38 = add i64 %25, 3
  %and39 = and i64 %add38, -4
  %26 = inttoptr i64 %and39 to i8*
  %add.ptr40 = getelementptr i8, i8* %scevgep163, i64 %sub31
  %cmp41 = icmp ult i8* %add.ptr40, %26
  %cmp43 = icmp ugt i8* %scevgep163, %23
  %or.cond = select i1 %cmp41, i1 true, i1 %cmp43
  %cmp46 = icmp ult i8* %26, %23
  %or.cond138 = select i1 %or.cond, i1 true, i1 %cmp46
  br i1 %or.cond138, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.end30
  %27 = load i32, i32* %arrayidx50, align 4
  %and51 = and i32 %27, 61440
  %cmp52 = icmp ne i32 %and51, 32768
  %cmp56.not = icmp ugt i64 %call, %idx.ext
  %or.cond139 = select i1 %cmp52, i1 true, i1 %cmp56.not
  br i1 %or.cond139, label %if.end80, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.end49
  %call59 = call i32 @memcmp(i8* noundef %scevgep163, i8* noundef %path, i64 noundef %call) #6
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.end80

if.then61:                                        ; preds = %land.lhs.true58
  %idx.ext.le = zext i32 %21 to i64
  %28 = inttoptr i64 %and to i8*
  %idx.ext36.le = zext i32 %24 to i64
  %tobool62.not = icmp eq i64* %nextoff, null
  br i1 %tobool62.not, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.then61
  %29 = ptrtoint i8* %data to i64
  %sub64 = sub i64 %and39, %29
  store i64 %sub64, i64* %nextoff, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.then61
  %sub68 = sub i64 %idx.ext.le, %call
  %cmp69 = icmp ugt i64 %sub68, 17
  br i1 %cmp69, label %do.end, label %if.end73

do.end:                                           ; preds = %if.end65
  %call72 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* noundef %scevgep163, i32 noundef 18) #7
  br label %if.end73

if.end73:                                         ; preds = %do.end, %if.end65
  %arraydecay74 = getelementptr inbounds %struct.cpio_data, %struct.cpio_data* %agg.result, i64 0, i32 2, i64 0
  %add.ptr75 = getelementptr i8, i8* %scevgep163, i64 %call
  %call76 = call i64 @strlcpy(i8* noundef %arraydecay74, i8* noundef %add.ptr75, i64 noundef 18) #6
  %data77 = getelementptr inbounds %struct.cpio_data, %struct.cpio_data* %agg.result, i64 0, i32 0
  store i8* %28, i8** %data77, align 8
  %size = getelementptr inbounds %struct.cpio_data, %struct.cpio_data* %agg.result, i64 0, i32 1
  store i64 %idx.ext36.le, i64* %size, align 8
  br label %cleanup

if.end80:                                         ; preds = %land.lhs.true58, %if.end49
  %sub.ptr.rhs.cast = ptrtoint i8* %scevgep163 to i64
  %sub.ptr.sub.neg = add i64 %sub31, %sub.ptr.rhs.cast
  %sub81 = sub i64 %sub.ptr.sub.neg, %and39
  br label %while.cond.backedge

cleanup:                                          ; preds = %while.cond.backedge, %if.end30, %for.end, %if.end12, %if.end12.1, %if.end12.2, %if.end12.3, %if.end12.4, %if.end12.5, %if.end12.6, %if.end12.7, %entry, %if.end73
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { cold nobuiltin nounwind "no-builtins" }

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
