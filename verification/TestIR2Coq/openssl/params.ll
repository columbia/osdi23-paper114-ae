; ModuleID = 'crypto/params.c'
source_filename = "crypto/params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [16 x i8] c"crypto/params.c\00", align 1

; Function Attrs: nofree noinline nounwind readonly uwtable
define %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef readonly %p, i8* noundef readonly %key) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_param_st* %p, null
  %cmp1 = icmp ne i8* %key, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %entry
  %key213 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 0
  %0 = load i8*, i8** %key213, align 8, !tbaa !4
  %cmp3.not14 = icmp eq i8* %0, null
  br i1 %cmp3.not14, label %return, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %1 = phi i8* [ %2, %for.inc ], [ %0, %for.cond.preheader ]
  %p.addr.015 = phi %struct.ossl_param_st* [ %incdec.ptr, %for.inc ], [ %p, %for.cond.preheader ]
  %call = tail call i32 @strcmp(i8* noundef nonnull %key, i8* noundef nonnull %1) #15
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %return, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.addr.015, i64 1
  %key2 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %key2, align 8, !tbaa !4
  %cmp3.not = icmp eq i8* %2, null
  br i1 %cmp3.not, label %return, label %for.body, !llvm.loop !11

return:                                           ; preds = %for.body, %for.inc, %for.cond.preheader, %entry
  %retval.0 = phi %struct.ossl_param_st* [ null, %entry ], [ null, %for.cond.preheader ], [ %p.addr.015, %for.body ], [ null, %for.inc ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind readonly uwtable
define %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef readonly %p, i8* noundef readonly %key) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %p, i8* noundef %key) #16
  ret %struct.ossl_param_st* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @OSSL_PARAM_modified(%struct.ossl_param_st* noundef readonly %p) local_unnamed_addr #2 {
entry:
  %cmp.not = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  %0 = load i64, i64* %return_size, align 8, !tbaa !13
  %cmp1 = icmp ne i64 %0, -1
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @OSSL_PARAM_set_all_unmodified(%struct.ossl_param_st* noundef %p) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp.not, label %if.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %key4 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 0
  %0 = load i8*, i8** %key4, align 8, !tbaa !4
  %cmp1.not5 = icmp eq i8* %0, null
  br i1 %cmp1.not5, label %if.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %p.addr.06 = phi %struct.ossl_param_st* [ %incdec.ptr, %while.body ], [ %p, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.addr.06, i64 1
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.addr.06, i64 0, i32 4
  store i64 -1, i64* %return_size, align 8, !tbaa !13
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %1 = load i8*, i8** %key, align 8, !tbaa !4
  %cmp1.not = icmp eq i8* %1, null
  br i1 %cmp1.not, label %if.end, label %while.body, !llvm.loop !14

if.end:                                           ; preds = %while.body, %while.cond.preheader, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef %p, i32* noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_get_int32(%struct.ossl_param_st* noundef %p, i32* noundef %val) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_int32(%struct.ossl_param_st* noundef readonly %p, i32* noundef %val) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i32* %val, null
  %cmp1 = icmp eq %struct.ossl_param_st* %p, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup57, label %if.end

if.end:                                           ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %0, label %cleanup57 [
    i32 1, label %if.then3
    i32 2, label %if.then13
    i32 3, label %if.then36
  ]

if.then3:                                         ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %1 = load i64, i64* %data_size, align 8, !tbaa !16
  switch i64 %1, label %sw.epilog [
    i64 4, label %sw.bb
    i64 8, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then3
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = bitcast i8** %data to i32**
  %3 = load i32*, i32** %2, align 8, !tbaa !17
  %4 = load i32, i32* %3, align 4, !tbaa !18
  store i32 %4, i32* %val, align 4, !tbaa !18
  br label %cleanup57

sw.bb4:                                           ; preds = %if.then3
  %data5 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %5 = bitcast i8** %data5 to i64**
  %6 = load i64*, i64** %5, align 8, !tbaa !17
  %7 = load i64, i64* %6, align 8, !tbaa !19
  %8 = add i64 %7, 2147483648
  %9 = icmp ult i64 %8, 4294967296
  br i1 %9, label %if.then8, label %cleanup57

if.then8:                                         ; preds = %sw.bb4
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %val, align 4, !tbaa !18
  br label %cleanup57

sw.epilog:                                        ; preds = %if.then3
  %10 = bitcast i32* %val to i8*
  %call = tail call fastcc i32 @general_get_int(%struct.ossl_param_st* noundef nonnull %p, i8* noundef %10, i64 noundef 4) #16
  br label %cleanup57

if.then13:                                        ; preds = %if.end
  %data_size14 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %11 = load i64, i64* %data_size14, align 8, !tbaa !16
  switch i64 %11, label %sw.epilog28 [
    i64 4, label %sw.bb15
    i64 8, label %sw.bb21
  ]

sw.bb15:                                          ; preds = %if.then13
  %data16 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %12 = bitcast i8** %data16 to i32**
  %13 = load i32*, i32** %12, align 8, !tbaa !17
  %14 = load i32, i32* %13, align 4, !tbaa !18
  %cmp17 = icmp sgt i32 %14, -1
  br i1 %cmp17, label %if.then19, label %cleanup57

if.then19:                                        ; preds = %sw.bb15
  store i32 %14, i32* %val, align 4, !tbaa !18
  br label %cleanup57

sw.bb21:                                          ; preds = %if.then13
  %data22 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %15 = bitcast i8** %data22 to i64**
  %16 = load i64*, i64** %15, align 8, !tbaa !17
  %17 = load i64, i64* %16, align 8, !tbaa !19
  %cmp23 = icmp ult i64 %17, 2147483648
  br i1 %cmp23, label %if.then25, label %cleanup57

if.then25:                                        ; preds = %sw.bb21
  %conv26 = trunc i64 %17 to i32
  store i32 %conv26, i32* %val, align 4, !tbaa !18
  br label %cleanup57

sw.epilog28:                                      ; preds = %if.then13
  %18 = bitcast i32* %val to i8*
  %call29 = tail call fastcc i32 @general_get_int(%struct.ossl_param_st* noundef nonnull %p, i8* noundef %18, i64 noundef 4) #16
  br label %cleanup57

if.then36:                                        ; preds = %if.end
  %data_size37 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %19 = load i64, i64* %data_size37, align 8, !tbaa !16
  %cond = icmp eq i64 %19, 8
  br i1 %cond, label %sw.bb38, label %cleanup57

sw.bb38:                                          ; preds = %if.then36
  %data39 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %20 = bitcast i8** %data39 to double**
  %21 = load double*, double** %20, align 8, !tbaa !17
  %22 = load double, double* %21, align 8, !tbaa !20
  %cmp40 = fcmp oge double %22, 0xC1E0000000000000
  %cmp43 = fcmp ole double %22, 0x41DFFFFFFFC00000
  %or.cond59 = and i1 %cmp40, %cmp43
  br i1 %or.cond59, label %land.lhs.true45, label %cleanup57

land.lhs.true45:                                  ; preds = %sw.bb38
  %conv46 = fptosi double %22 to i32
  %conv47 = sitofp i32 %conv46 to double
  %cmp48 = fcmp oeq double %22, %conv47
  br i1 %cmp48, label %if.then50, label %cleanup57

if.then50:                                        ; preds = %land.lhs.true45
  store i32 %conv46, i32* %val, align 4, !tbaa !18
  br label %cleanup57

cleanup57:                                        ; preds = %sw.bb38, %land.lhs.true45, %if.then36, %if.end, %if.then19, %if.then25, %sw.epilog28, %sw.bb15, %sw.bb21, %sw.bb, %if.then8, %sw.epilog, %sw.bb4, %entry, %if.then50
  %retval.2 = phi i32 [ 1, %if.then50 ], [ 0, %entry ], [ %call, %sw.epilog ], [ 1, %if.then8 ], [ 1, %sw.bb ], [ 0, %sw.bb4 ], [ %call29, %sw.epilog28 ], [ 1, %if.then25 ], [ 1, %if.then19 ], [ 0, %sw.bb15 ], [ 0, %sw.bb21 ], [ 0, %if.end ], [ 0, %if.then36 ], [ 0, %land.lhs.true45 ], [ 0, %sw.bb38 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef %p, i32 noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef %p, i32 noundef %val) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_int32(%struct.ossl_param_st* noundef %p, i32 noundef %val) local_unnamed_addr #4 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4, !tbaa !18
  %cmp = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 0, i64* %return_size, align 8, !tbaa !13
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i64 4, i64* %return_size, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp4 = icmp eq i8* %1, null
  %2 = bitcast i8* %1 to i64*
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.then2
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %3 = load i64, i64* %data_size, align 8, !tbaa !16
  switch i64 %3, label %sw.epilog [
    i64 4, label %sw.bb
    i64 8, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end6
  %4 = bitcast i8* %1 to i32*
  store i32 %val, i32* %4, align 4, !tbaa !18
  br label %return

sw.bb8:                                           ; preds = %if.end6
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %conv = sext i32 %val to i64
  store i64 %conv, i64* %2, align 8, !tbaa !19
  br label %return

sw.epilog:                                        ; preds = %if.end6
  %5 = bitcast i32* %val.addr to i8*
  %call = call fastcc i32 @general_set_int(%struct.ossl_param_st* noundef nonnull %p, i8* noundef nonnull %5, i64 noundef 4) #16
  br label %return

if.else:                                          ; preds = %if.end
  %cmp12 = icmp eq i32 %0, 2
  %cmp14 = icmp sgt i32 %val, -1
  %or.cond = and i1 %cmp14, %cmp12
  br i1 %or.cond, label %if.then16, label %if.else32

if.then16:                                        ; preds = %if.else
  store i64 4, i64* %return_size, align 8, !tbaa !13
  %data18 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %6 = load i8*, i8** %data18, align 8, !tbaa !17
  %cmp19 = icmp eq i8* %6, null
  %7 = bitcast i8* %6 to i64*
  br i1 %cmp19, label %return, label %if.end22

if.end22:                                         ; preds = %if.then16
  %data_size23 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %8 = load i64, i64* %data_size23, align 8, !tbaa !16
  switch i64 %8, label %sw.epilog30 [
    i64 4, label %sw.bb24
    i64 8, label %sw.bb26
  ]

sw.bb24:                                          ; preds = %if.end22
  %9 = bitcast i8* %6 to i32*
  store i32 %val, i32* %9, align 4, !tbaa !18
  br label %return

sw.bb26:                                          ; preds = %if.end22
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %conv2876 = zext i32 %val to i64
  store i64 %conv2876, i64* %7, align 8, !tbaa !19
  br label %return

sw.epilog30:                                      ; preds = %if.end22
  %10 = bitcast i32* %val.addr to i8*
  %call31 = call fastcc i32 @general_set_int(%struct.ossl_param_st* noundef nonnull %p, i8* noundef nonnull %10, i64 noundef 4) #16
  br label %return

if.else32:                                        ; preds = %if.else
  %cmp34 = icmp eq i32 %0, 3
  br i1 %cmp34, label %if.then36, label %return

if.then36:                                        ; preds = %if.else32
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %data38 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %11 = load i8*, i8** %data38, align 8, !tbaa !17
  %cmp39 = icmp eq i8* %11, null
  br i1 %cmp39, label %return, label %if.end42

if.end42:                                         ; preds = %if.then36
  %data_size43 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %12 = load i64, i64* %data_size43, align 8, !tbaa !16
  %cond = icmp eq i64 %12, 8
  br i1 %cond, label %sw.bb44, label %return

sw.bb44:                                          ; preds = %if.end42
  %conv45 = sitofp i32 %val to double
  %13 = bitcast i8* %11 to double*
  store double %conv45, double* %13, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %if.else32, %if.end42, %if.then36, %if.then16, %if.then2, %entry, %sw.bb44, %sw.epilog30, %sw.bb26, %sw.bb24, %sw.epilog, %sw.bb8, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 1, %sw.bb8 ], [ 1, %sw.bb ], [ %call31, %sw.epilog30 ], [ 1, %sw.bb26 ], [ 1, %sw.bb24 ], [ 1, %sw.bb44 ], [ 0, %entry ], [ 1, %if.then2 ], [ 1, %if.then16 ], [ 1, %if.then36 ], [ 0, %if.end42 ], [ 0, %if.else32 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_int(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32* noundef %buf) local_unnamed_addr #5 {
entry:
  %0 = bitcast i32* %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 1, i8* noundef %0, i64 noundef 4) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @ossl_param_construct(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef %data_type, i8* noundef %data, i64 noundef %data_size) unnamed_addr #5 {
entry:
  %key1 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %agg.result, i64 0, i32 0
  store i8* %key, i8** %key1, align 8, !tbaa !4
  %data_type2 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %agg.result, i64 0, i32 1
  store i32 %data_type, i32* %data_type2, align 8, !tbaa !15
  %data3 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %agg.result, i64 0, i32 2
  store i8* %data, i8** %data3, align 8, !tbaa !17
  %data_size4 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %agg.result, i64 0, i32 3
  store i64 %data_size, i64* %data_size4, align 8, !tbaa !16
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %agg.result, i64 0, i32 4
  store i64 -1, i64* %return_size, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef %p, i32* noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_get_uint32(%struct.ossl_param_st* noundef %p, i32* noundef %val) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_uint32(%struct.ossl_param_st* noundef readonly %p, i32* noundef %val) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i32* %val, null
  %cmp1 = icmp eq %struct.ossl_param_st* %p, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup58, label %if.end

if.end:                                           ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %0, label %cleanup58 [
    i32 2, label %if.then3
    i32 1, label %if.then12
    i32 3, label %if.then37
  ]

if.then3:                                         ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %1 = load i64, i64* %data_size, align 8, !tbaa !16
  switch i64 %1, label %sw.epilog [
    i64 4, label %sw.bb
    i64 8, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then3
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = bitcast i8** %data to i32**
  %3 = load i32*, i32** %2, align 8, !tbaa !17
  %4 = load i32, i32* %3, align 4, !tbaa !18
  store i32 %4, i32* %val, align 4, !tbaa !18
  br label %cleanup58

sw.bb4:                                           ; preds = %if.then3
  %data5 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %5 = bitcast i8** %data5 to i64**
  %6 = load i64*, i64** %5, align 8, !tbaa !17
  %7 = load i64, i64* %6, align 8, !tbaa !19
  %cmp6 = icmp ult i64 %7, 4294967296
  br i1 %cmp6, label %if.then7, label %cleanup58

if.then7:                                         ; preds = %sw.bb4
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %val, align 4, !tbaa !18
  br label %cleanup58

sw.epilog:                                        ; preds = %if.then3
  %8 = bitcast i32* %val to i8*
  %call = tail call fastcc i32 @general_get_uint(%struct.ossl_param_st* noundef nonnull %p, i8* noundef %8, i64 noundef 4) #16
  br label %cleanup58

if.then12:                                        ; preds = %if.end
  %data_size13 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %9 = load i64, i64* %data_size13, align 8, !tbaa !16
  switch i64 %9, label %sw.epilog29 [
    i64 4, label %sw.bb14
    i64 8, label %sw.bb20
  ]

sw.bb14:                                          ; preds = %if.then12
  %data15 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %10 = bitcast i8** %data15 to i32**
  %11 = load i32*, i32** %10, align 8, !tbaa !17
  %12 = load i32, i32* %11, align 4, !tbaa !18
  %cmp16 = icmp sgt i32 %12, -1
  br i1 %cmp16, label %if.then18, label %cleanup58

if.then18:                                        ; preds = %sw.bb14
  store i32 %12, i32* %val, align 4, !tbaa !18
  br label %cleanup58

sw.bb20:                                          ; preds = %if.then12
  %data21 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %13 = bitcast i8** %data21 to i64**
  %14 = load i64*, i64** %13, align 8, !tbaa !17
  %15 = load i64, i64* %14, align 8, !tbaa !19
  %16 = icmp ult i64 %15, 4294967296
  br i1 %16, label %if.then26, label %cleanup58

if.then26:                                        ; preds = %sw.bb20
  %conv27 = trunc i64 %15 to i32
  store i32 %conv27, i32* %val, align 4, !tbaa !18
  br label %cleanup58

sw.epilog29:                                      ; preds = %if.then12
  %17 = bitcast i32* %val to i8*
  %call30 = tail call fastcc i32 @general_get_uint(%struct.ossl_param_st* noundef nonnull %p, i8* noundef %17, i64 noundef 4) #16
  br label %cleanup58

if.then37:                                        ; preds = %if.end
  %data_size38 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %18 = load i64, i64* %data_size38, align 8, !tbaa !16
  %cond = icmp eq i64 %18, 8
  br i1 %cond, label %sw.bb39, label %cleanup58

sw.bb39:                                          ; preds = %if.then37
  %data40 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %19 = bitcast i8** %data40 to double**
  %20 = load double*, double** %19, align 8, !tbaa !17
  %21 = load double, double* %20, align 8, !tbaa !20
  %cmp41 = fcmp oge double %21, 0.000000e+00
  %cmp44 = fcmp ole double %21, 0x41EFFFFFFFE00000
  %or.cond60 = and i1 %cmp41, %cmp44
  br i1 %or.cond60, label %land.lhs.true46, label %cleanup58

land.lhs.true46:                                  ; preds = %sw.bb39
  %conv47 = fptoui double %21 to i32
  %conv48 = uitofp i32 %conv47 to double
  %cmp49 = fcmp oeq double %21, %conv48
  br i1 %cmp49, label %if.then51, label %cleanup58

if.then51:                                        ; preds = %land.lhs.true46
  store i32 %conv47, i32* %val, align 4, !tbaa !18
  br label %cleanup58

cleanup58:                                        ; preds = %sw.bb39, %land.lhs.true46, %if.then37, %if.end, %if.then18, %if.then26, %sw.epilog29, %sw.bb14, %sw.bb20, %sw.bb, %if.then7, %sw.epilog, %sw.bb4, %entry, %if.then51
  %retval.2 = phi i32 [ 1, %if.then51 ], [ 0, %entry ], [ %call, %sw.epilog ], [ 1, %if.then7 ], [ 1, %sw.bb ], [ 0, %sw.bb4 ], [ %call30, %sw.epilog29 ], [ 1, %if.then26 ], [ 1, %if.then18 ], [ 0, %sw.bb14 ], [ 0, %sw.bb20 ], [ 0, %if.end ], [ 0, %if.then37 ], [ 0, %land.lhs.true46 ], [ 0, %sw.bb39 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_uint(%struct.ossl_param_st* noundef %p, i32 noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_set_uint32(%struct.ossl_param_st* noundef %p, i32 noundef %val) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_uint32(%struct.ossl_param_st* noundef %p, i32 noundef %val) local_unnamed_addr #4 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4, !tbaa !18
  %cmp = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 0, i64* %return_size, align 8, !tbaa !13
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %0, label %return [
    i32 2, label %if.then2
    i32 1, label %if.then14
    i32 3, label %if.then38
  ]

if.then2:                                         ; preds = %if.end
  store i64 4, i64* %return_size, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp4 = icmp eq i8* %1, null
  %2 = bitcast i8* %1 to i64*
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.then2
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %3 = load i64, i64* %data_size, align 8, !tbaa !16
  switch i64 %3, label %sw.epilog [
    i64 4, label %sw.bb
    i64 8, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end6
  %4 = bitcast i8* %1 to i32*
  store i32 %val, i32* %4, align 4, !tbaa !18
  br label %return

sw.bb8:                                           ; preds = %if.end6
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %conv = zext i32 %val to i64
  store i64 %conv, i64* %2, align 8, !tbaa !19
  br label %return

sw.epilog:                                        ; preds = %if.end6
  %5 = bitcast i32* %val.addr to i8*
  %call = call fastcc i32 @general_set_uint(%struct.ossl_param_st* noundef nonnull %p, i8* noundef nonnull %5, i64 noundef 4) #16
  br label %return

if.then14:                                        ; preds = %if.end
  store i64 4, i64* %return_size, align 8, !tbaa !13
  %data16 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %6 = load i8*, i8** %data16, align 8, !tbaa !17
  %cmp17 = icmp eq i8* %6, null
  %7 = bitcast i8* %6 to i64*
  br i1 %cmp17, label %return, label %if.end20

if.end20:                                         ; preds = %if.then14
  %data_size21 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %8 = load i64, i64* %data_size21, align 8, !tbaa !16
  switch i64 %8, label %sw.epilog32 [
    i64 4, label %sw.bb22
    i64 8, label %sw.bb28
  ]

sw.bb22:                                          ; preds = %if.end20
  %cmp23 = icmp sgt i32 %val, -1
  br i1 %cmp23, label %if.then25, label %return

if.then25:                                        ; preds = %sw.bb22
  %9 = bitcast i8* %6 to i32*
  store i32 %val, i32* %9, align 4, !tbaa !18
  br label %return

sw.bb28:                                          ; preds = %if.end20
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %conv30 = zext i32 %val to i64
  store i64 %conv30, i64* %7, align 8, !tbaa !19
  br label %return

sw.epilog32:                                      ; preds = %if.end20
  %10 = bitcast i32* %val.addr to i8*
  %call33 = call fastcc i32 @general_set_uint(%struct.ossl_param_st* noundef nonnull %p, i8* noundef nonnull %10, i64 noundef 4) #16
  br label %return

if.then38:                                        ; preds = %if.end
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %data40 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %11 = load i8*, i8** %data40, align 8, !tbaa !17
  %cmp41 = icmp eq i8* %11, null
  br i1 %cmp41, label %return, label %if.end44

if.end44:                                         ; preds = %if.then38
  %data_size45 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %12 = load i64, i64* %data_size45, align 8, !tbaa !16
  %cond = icmp eq i64 %12, 8
  br i1 %cond, label %sw.bb46, label %return

sw.bb46:                                          ; preds = %if.end44
  %conv47 = uitofp i32 %val to double
  %13 = bitcast i8* %11 to double*
  store double %conv47, double* %13, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %if.end44, %if.end, %if.then38, %sw.bb22, %if.then14, %if.then2, %entry, %sw.bb46, %sw.epilog32, %sw.bb28, %if.then25, %sw.epilog, %sw.bb8, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 1, %sw.bb8 ], [ 1, %sw.bb ], [ %call33, %sw.epilog32 ], [ 1, %sw.bb28 ], [ 1, %if.then25 ], [ 1, %sw.bb46 ], [ 0, %entry ], [ 1, %if.then2 ], [ 1, %if.then14 ], [ 0, %sw.bb22 ], [ 1, %if.then38 ], [ 0, %if.end ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32* noundef %buf) local_unnamed_addr #5 {
entry:
  %0 = bitcast i32* %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 2, i8* noundef %0, i64 noundef 4) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_long(%struct.ossl_param_st* noundef %p, i64* noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef %p, i64* noundef %val) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef readonly %p, i64* noundef %val) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i64* %val, null
  %cmp1 = icmp eq %struct.ossl_param_st* %p, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup46, label %if.end

if.end:                                           ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %0, label %cleanup46 [
    i32 1, label %if.then3
    i32 2, label %if.then9
    i32 3, label %if.then26
  ]

if.then3:                                         ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %1 = load i64, i64* %data_size, align 8, !tbaa !16
  switch i64 %1, label %sw.epilog [
    i64 4, label %sw.bb
    i64 8, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then3
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = bitcast i8** %data to i32**
  %3 = load i32*, i32** %2, align 8, !tbaa !17
  %4 = load i32, i32* %3, align 4, !tbaa !18
  %conv = sext i32 %4 to i64
  store i64 %conv, i64* %val, align 8, !tbaa !19
  br label %cleanup46

sw.bb4:                                           ; preds = %if.then3
  %data5 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %5 = bitcast i8** %data5 to i64**
  %6 = load i64*, i64** %5, align 8, !tbaa !17
  %7 = load i64, i64* %6, align 8, !tbaa !19
  store i64 %7, i64* %val, align 8, !tbaa !19
  br label %cleanup46

sw.epilog:                                        ; preds = %if.then3
  %8 = bitcast i64* %val to i8*
  %call = tail call fastcc i32 @general_get_int(%struct.ossl_param_st* noundef nonnull %p, i8* noundef %8, i64 noundef 8) #16
  br label %cleanup46

if.then9:                                         ; preds = %if.end
  %data_size10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %9 = load i64, i64* %data_size10, align 8, !tbaa !16
  switch i64 %9, label %sw.epilog20 [
    i64 4, label %sw.bb11
    i64 8, label %sw.bb14
  ]

sw.bb11:                                          ; preds = %if.then9
  %data12 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %10 = bitcast i8** %data12 to i32**
  %11 = load i32*, i32** %10, align 8, !tbaa !17
  %12 = load i32, i32* %11, align 4, !tbaa !18
  %conv13 = zext i32 %12 to i64
  store i64 %conv13, i64* %val, align 8, !tbaa !19
  br label %cleanup46

sw.bb14:                                          ; preds = %if.then9
  %data15 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %13 = bitcast i8** %data15 to i64**
  %14 = load i64*, i64** %13, align 8, !tbaa !17
  %15 = load i64, i64* %14, align 8, !tbaa !19
  %cmp16 = icmp sgt i64 %15, -1
  br i1 %cmp16, label %if.then18, label %cleanup46

if.then18:                                        ; preds = %sw.bb14
  store i64 %15, i64* %val, align 8, !tbaa !19
  br label %cleanup46

sw.epilog20:                                      ; preds = %if.then9
  %16 = bitcast i64* %val to i8*
  %call21 = tail call fastcc i32 @general_get_int(%struct.ossl_param_st* noundef nonnull %p, i8* noundef %16, i64 noundef 8) #16
  br label %cleanup46

if.then26:                                        ; preds = %if.end
  %data_size27 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %17 = load i64, i64* %data_size27, align 8, !tbaa !16
  %cond = icmp eq i64 %17, 8
  br i1 %cond, label %sw.bb28, label %cleanup46

sw.bb28:                                          ; preds = %if.then26
  %data29 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %18 = bitcast i8** %data29 to double**
  %19 = load double*, double** %18, align 8, !tbaa !17
  %20 = load double, double* %19, align 8, !tbaa !20
  %cmp30 = fcmp oge double %20, 0xC3E0000000000000
  %cmp32 = fcmp olt double %20, 0x43E0000000000000
  %or.cond47 = and i1 %cmp30, %cmp32
  br i1 %or.cond47, label %land.lhs.true34, label %cleanup46

land.lhs.true34:                                  ; preds = %sw.bb28
  %conv35 = fptosi double %20 to i64
  %conv36 = sitofp i64 %conv35 to double
  %cmp37 = fcmp oeq double %20, %conv36
  br i1 %cmp37, label %if.then39, label %cleanup46

if.then39:                                        ; preds = %land.lhs.true34
  store i64 %conv35, i64* %val, align 8, !tbaa !19
  br label %cleanup46

cleanup46:                                        ; preds = %sw.bb28, %land.lhs.true34, %if.then26, %if.end, %sw.bb11, %if.then18, %sw.epilog20, %sw.bb14, %entry, %if.then39, %sw.epilog, %sw.bb4, %sw.bb
  %retval.1 = phi i32 [ %call, %sw.epilog ], [ 1, %sw.bb4 ], [ 1, %sw.bb ], [ 1, %if.then39 ], [ 0, %entry ], [ %call21, %sw.epilog20 ], [ 1, %if.then18 ], [ 1, %sw.bb11 ], [ 0, %sw.bb14 ], [ 0, %if.end ], [ 0, %if.then26 ], [ 0, %land.lhs.true34 ], [ 0, %sw.bb28 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_long(%struct.ossl_param_st* noundef %p, i64 noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_set_int64(%struct.ossl_param_st* noundef %p, i64 noundef %val) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_int64(%struct.ossl_param_st* noundef %p, i64 noundef %val) local_unnamed_addr #4 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8, !tbaa !19
  %cmp = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 0, i64* %return_size, align 8, !tbaa !13
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp4 = icmp eq i8* %1, null
  %2 = bitcast i8* %1 to i32*
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then2
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %3 = load i64, i64* %data_size, align 8, !tbaa !16
  switch i64 %3, label %sw.epilog [
    i64 4, label %sw.bb
    i64 8, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end6
  %4 = add i64 %val, 2147483648
  %5 = icmp ult i64 %4, 4294967296
  br i1 %5, label %if.then9, label %cleanup

if.then9:                                         ; preds = %sw.bb
  store i64 4, i64* %return_size, align 8, !tbaa !13
  %conv = trunc i64 %val to i32
  store i32 %conv, i32* %2, align 4, !tbaa !18
  br label %cleanup

sw.bb13:                                          ; preds = %if.end6
  %6 = bitcast i8* %1 to i64*
  store i64 %val, i64* %6, align 8, !tbaa !19
  br label %cleanup

sw.epilog:                                        ; preds = %if.end6
  %7 = bitcast i64* %val.addr to i8*
  %call = call fastcc i32 @general_set_int(%struct.ossl_param_st* noundef nonnull %p, i8* noundef nonnull %7, i64 noundef 8) #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp16 = icmp eq i32 %0, 2
  %cmp19 = icmp sgt i64 %val, -1
  %or.cond68 = and i1 %cmp19, %cmp16
  br i1 %or.cond68, label %if.then21, label %if.else41

if.then21:                                        ; preds = %if.else
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %data23 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %8 = load i8*, i8** %data23, align 8, !tbaa !17
  %cmp24 = icmp eq i8* %8, null
  %9 = bitcast i8* %8 to i32*
  br i1 %cmp24, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.then21
  %data_size28 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %10 = load i64, i64* %data_size28, align 8, !tbaa !16
  switch i64 %10, label %sw.epilog39 [
    i64 4, label %sw.bb29
    i64 8, label %sw.bb37
  ]

sw.bb29:                                          ; preds = %if.end27
  %cmp30 = icmp ult i64 %val, 4294967296
  br i1 %cmp30, label %if.then32, label %cleanup

if.then32:                                        ; preds = %sw.bb29
  store i64 4, i64* %return_size, align 8, !tbaa !13
  %conv34 = trunc i64 %val to i32
  store i32 %conv34, i32* %9, align 4, !tbaa !18
  br label %cleanup

sw.bb37:                                          ; preds = %if.end27
  %11 = bitcast i8* %8 to i64*
  store i64 %val, i64* %11, align 8, !tbaa !19
  br label %cleanup

sw.epilog39:                                      ; preds = %if.end27
  %12 = bitcast i64* %val.addr to i8*
  %call40 = call fastcc i32 @general_set_int(%struct.ossl_param_st* noundef nonnull %p, i8* noundef nonnull %12, i64 noundef 8) #16
  br label %cleanup

if.else41:                                        ; preds = %if.else
  %cmp43 = icmp eq i32 %0, 3
  br i1 %cmp43, label %if.then45, label %cleanup

if.then45:                                        ; preds = %if.else41
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %data47 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %13 = load i8*, i8** %data47, align 8, !tbaa !17
  %cmp48 = icmp eq i8* %13, null
  %14 = bitcast i8* %13 to double*
  br i1 %cmp48, label %cleanup, label %if.end51

if.end51:                                         ; preds = %if.then45
  %data_size52 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %15 = load i64, i64* %data_size52, align 8, !tbaa !16
  %cond67 = icmp eq i64 %15, 8
  %16 = tail call i64 @llvm.abs.i64(i64 %val, i1 true)
  %cmp57 = icmp ult i64 %16, 9007199254740992
  %or.cond = select i1 %cond67, i1 %cmp57, i1 false
  br i1 %or.cond, label %if.then59, label %cleanup

if.then59:                                        ; preds = %if.end51
  %conv60 = sitofp i64 %val to double
  store double %conv60, double* %14, align 8, !tbaa !20
  br label %cleanup

cleanup:                                          ; preds = %if.else41, %if.end51, %if.then45, %sw.bb29, %if.then21, %sw.bb, %if.then2, %entry, %if.then59, %sw.epilog39, %sw.bb37, %if.then32, %sw.epilog, %sw.bb13, %if.then9
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 1, %sw.bb13 ], [ 1, %if.then9 ], [ %call40, %sw.epilog39 ], [ 1, %sw.bb37 ], [ 1, %if.then32 ], [ 1, %if.then59 ], [ 0, %entry ], [ 1, %if.then2 ], [ 0, %sw.bb ], [ 1, %if.then21 ], [ 0, %sw.bb29 ], [ 1, %if.then45 ], [ 0, %if.end51 ], [ 0, %if.else41 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_long(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i64* noundef %buf) local_unnamed_addr #5 {
entry:
  %0 = bitcast i64* %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 1, i8* noundef %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_ulong(%struct.ossl_param_st* noundef %p, i64* noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef %p, i64* noundef %val) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef readonly %p, i64* noundef %val) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i64* %val, null
  %cmp1 = icmp eq %struct.ossl_param_st* %p, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup51, label %if.end

if.end:                                           ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %0, label %cleanup51 [
    i32 2, label %if.then3
    i32 1, label %if.then9
    i32 3, label %if.then31
  ]

if.then3:                                         ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %1 = load i64, i64* %data_size, align 8, !tbaa !16
  switch i64 %1, label %sw.epilog [
    i64 4, label %sw.bb
    i64 8, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then3
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = bitcast i8** %data to i32**
  %3 = load i32*, i32** %2, align 8, !tbaa !17
  %4 = load i32, i32* %3, align 4, !tbaa !18
  %conv = zext i32 %4 to i64
  store i64 %conv, i64* %val, align 8, !tbaa !19
  br label %cleanup51

sw.bb4:                                           ; preds = %if.then3
  %data5 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %5 = bitcast i8** %data5 to i64**
  %6 = load i64*, i64** %5, align 8, !tbaa !17
  %7 = load i64, i64* %6, align 8, !tbaa !19
  store i64 %7, i64* %val, align 8, !tbaa !19
  br label %cleanup51

sw.epilog:                                        ; preds = %if.then3
  %8 = bitcast i64* %val to i8*
  %call = tail call fastcc i32 @general_get_uint(%struct.ossl_param_st* noundef nonnull %p, i8* noundef %8, i64 noundef 8) #16
  br label %cleanup51

if.then9:                                         ; preds = %if.end
  %data_size10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %9 = load i64, i64* %data_size10, align 8, !tbaa !16
  switch i64 %9, label %sw.epilog24 [
    i64 4, label %sw.bb11
    i64 8, label %sw.bb18
  ]

sw.bb11:                                          ; preds = %if.then9
  %data12 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %10 = bitcast i8** %data12 to i32**
  %11 = load i32*, i32** %10, align 8, !tbaa !17
  %12 = load i32, i32* %11, align 4, !tbaa !18
  %cmp13 = icmp sgt i32 %12, -1
  br i1 %cmp13, label %if.then15, label %cleanup51

if.then15:                                        ; preds = %sw.bb11
  %conv1685 = zext i32 %12 to i64
  store i64 %conv1685, i64* %val, align 8, !tbaa !19
  br label %cleanup51

sw.bb18:                                          ; preds = %if.then9
  %data19 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %13 = bitcast i8** %data19 to i64**
  %14 = load i64*, i64** %13, align 8, !tbaa !17
  %15 = load i64, i64* %14, align 8, !tbaa !19
  %cmp20 = icmp sgt i64 %15, -1
  br i1 %cmp20, label %if.then22, label %cleanup51

if.then22:                                        ; preds = %sw.bb18
  store i64 %15, i64* %val, align 8, !tbaa !19
  br label %cleanup51

sw.epilog24:                                      ; preds = %if.then9
  %16 = bitcast i64* %val to i8*
  %call25 = tail call fastcc i32 @general_get_uint(%struct.ossl_param_st* noundef nonnull %p, i8* noundef %16, i64 noundef 8) #16
  br label %cleanup51

if.then31:                                        ; preds = %if.end
  %data_size32 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %17 = load i64, i64* %data_size32, align 8, !tbaa !16
  %cond = icmp eq i64 %17, 8
  br i1 %cond, label %sw.bb33, label %cleanup51

sw.bb33:                                          ; preds = %if.then31
  %data34 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %18 = bitcast i8** %data34 to double**
  %19 = load double*, double** %18, align 8, !tbaa !17
  %20 = load double, double* %19, align 8, !tbaa !20
  %cmp35 = fcmp oge double %20, 0.000000e+00
  %cmp37 = fcmp olt double %20, 0x43F0000000000000
  %or.cond52 = and i1 %cmp35, %cmp37
  br i1 %or.cond52, label %land.lhs.true39, label %cleanup51

land.lhs.true39:                                  ; preds = %sw.bb33
  %conv40 = fptoui double %20 to i64
  %conv41 = uitofp i64 %conv40 to double
  %cmp42 = fcmp oeq double %20, %conv41
  br i1 %cmp42, label %if.then44, label %cleanup51

if.then44:                                        ; preds = %land.lhs.true39
  store i64 %conv40, i64* %val, align 8, !tbaa !19
  br label %cleanup51

cleanup51:                                        ; preds = %sw.bb33, %land.lhs.true39, %if.then31, %if.end, %if.then15, %if.then22, %sw.epilog24, %sw.bb11, %sw.bb18, %entry, %if.then44, %sw.epilog, %sw.bb4, %sw.bb
  %retval.1 = phi i32 [ %call, %sw.epilog ], [ 1, %sw.bb4 ], [ 1, %sw.bb ], [ 1, %if.then44 ], [ 0, %entry ], [ %call25, %sw.epilog24 ], [ 1, %if.then22 ], [ 1, %if.then15 ], [ 0, %sw.bb11 ], [ 0, %sw.bb18 ], [ 0, %if.end ], [ 0, %if.then31 ], [ 0, %land.lhs.true39 ], [ 0, %sw.bb33 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_ulong(%struct.ossl_param_st* noundef %p, i64 noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_set_uint64(%struct.ossl_param_st* noundef %p, i64 noundef %val) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_uint64(%struct.ossl_param_st* noundef %p, i64 noundef %val) local_unnamed_addr #4 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8, !tbaa !19
  %cmp = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 0, i64* %return_size, align 8, !tbaa !13
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %0, label %return [
    i32 2, label %if.then2
    i32 1, label %if.then17
    i32 3, label %if.then45
  ]

if.then2:                                         ; preds = %if.end
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp4 = icmp eq i8* %1, null
  %2 = bitcast i8* %1 to i32*
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.then2
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %3 = load i64, i64* %data_size, align 8, !tbaa !16
  switch i64 %3, label %sw.epilog [
    i64 4, label %sw.bb
    i64 8, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end6
  %cmp7 = icmp ult i64 %val, 4294967296
  br i1 %cmp7, label %if.then8, label %return

if.then8:                                         ; preds = %sw.bb
  store i64 4, i64* %return_size, align 8, !tbaa !13
  %conv = trunc i64 %val to i32
  store i32 %conv, i32* %2, align 4, !tbaa !18
  br label %return

sw.bb12:                                          ; preds = %if.end6
  %4 = bitcast i8* %1 to i64*
  store i64 %val, i64* %4, align 8, !tbaa !19
  br label %return

sw.epilog:                                        ; preds = %if.end6
  %5 = bitcast i64* %val.addr to i8*
  %call = call fastcc i32 @general_set_uint(%struct.ossl_param_st* noundef nonnull %p, i8* noundef nonnull %5, i64 noundef 8) #16
  br label %return

if.then17:                                        ; preds = %if.end
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %data19 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %6 = load i8*, i8** %data19, align 8, !tbaa !17
  %cmp20 = icmp eq i8* %6, null
  %7 = bitcast i8* %6 to i32*
  br i1 %cmp20, label %return, label %if.end23

if.end23:                                         ; preds = %if.then17
  %data_size24 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %8 = load i64, i64* %data_size24, align 8, !tbaa !16
  switch i64 %8, label %sw.epilog39 [
    i64 4, label %sw.bb25
    i64 8, label %sw.bb33
  ]

sw.bb25:                                          ; preds = %if.end23
  %cmp26 = icmp ult i64 %val, 2147483648
  br i1 %cmp26, label %if.then28, label %return

if.then28:                                        ; preds = %sw.bb25
  store i64 4, i64* %return_size, align 8, !tbaa !13
  %conv30 = trunc i64 %val to i32
  store i32 %conv30, i32* %7, align 4, !tbaa !18
  br label %return

sw.bb33:                                          ; preds = %if.end23
  %cmp34 = icmp sgt i64 %val, -1
  br i1 %cmp34, label %if.then36, label %return

if.then36:                                        ; preds = %sw.bb33
  %9 = bitcast i8* %6 to i64*
  store i64 %val, i64* %9, align 8, !tbaa !19
  br label %return

sw.epilog39:                                      ; preds = %if.end23
  %10 = bitcast i64* %val.addr to i8*
  %call40 = call fastcc i32 @general_set_uint(%struct.ossl_param_st* noundef nonnull %p, i8* noundef nonnull %10, i64 noundef 8) #16
  br label %return

if.then45:                                        ; preds = %if.end
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %data_size47 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %11 = load i64, i64* %data_size47, align 8, !tbaa !16
  %cond = icmp eq i64 %11, 8
  %cmp50 = icmp ult i64 %val, 9007199254740992
  %or.cond = and i1 %cmp50, %cond
  br i1 %or.cond, label %if.then52, label %return

if.then52:                                        ; preds = %if.then45
  %conv53 = uitofp i64 %val to double
  %data54 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %12 = bitcast i8** %data54 to double**
  %13 = load double*, double** %12, align 8, !tbaa !17
  store double %conv53, double* %13, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %if.then45, %if.end, %sw.bb33, %sw.bb25, %if.then17, %sw.bb, %if.then2, %entry, %if.then52, %sw.epilog39, %if.then36, %if.then28, %sw.epilog, %sw.bb12, %if.then8
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 1, %sw.bb12 ], [ 1, %if.then8 ], [ %call40, %sw.epilog39 ], [ 1, %if.then36 ], [ 1, %if.then28 ], [ 1, %if.then52 ], [ 0, %entry ], [ 1, %if.then2 ], [ 0, %sw.bb ], [ 1, %if.then17 ], [ 0, %sw.bb25 ], [ 0, %sw.bb33 ], [ 0, %if.end ], [ 0, %if.then45 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_ulong(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i64* noundef %buf) local_unnamed_addr #5 {
entry:
  %0 = bitcast i64* %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 2, i8* noundef %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @general_get_int(%struct.ossl_param_st* nocapture noundef readonly %p, i8* noundef %val, i64 noundef %val_size) unnamed_addr #4 {
entry:
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %0, label %return [
    i32 1, label %if.then
    i32 2, label %if.then3
  ]

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !17
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %2 = load i64, i64* %data_size, align 8, !tbaa !16
  %call = tail call fastcc i32 @signed_from_signed(i8* noundef %val, i64 noundef %val_size, i8* noundef %1, i64 noundef %2) #16
  br label %return

if.then3:                                         ; preds = %entry
  %data4 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %3 = load i8*, i8** %data4, align 8, !tbaa !17
  %data_size5 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %4 = load i64, i64* %data_size5, align 8, !tbaa !16
  %call6 = tail call fastcc i32 @signed_from_unsigned(i8* noundef %val, i64 noundef %val_size, i8* noundef %3, i64 noundef %4) #16
  br label %return

return:                                           ; preds = %entry, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.then3 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @general_set_int(%struct.ossl_param_st* nocapture noundef %p, i8* noundef %val, i64 noundef %val_size) unnamed_addr #4 {
entry:
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 %val_size, i64* %return_size, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %1, label %cond.end [
    i32 1, label %if.then2
    i32 2, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %2 = load i64, i64* %data_size, align 8, !tbaa !16
  %call = tail call fastcc i32 @signed_from_signed(i8* noundef nonnull %0, i64 noundef %2, i8* noundef %val, i64 noundef %val_size) #16
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %data_size8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %3 = load i64, i64* %data_size8, align 8, !tbaa !16
  %call9 = tail call fastcc i32 @unsigned_from_signed(i8* noundef nonnull %0, i64 noundef %3, i8* noundef %val, i64 noundef %val_size) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.then2
  %r.0 = phi i32 [ %call, %if.then2 ], [ %call9, %if.then6 ]
  %tobool.not = icmp eq i32 %r.0, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end11
  %data_size12 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %4 = load i64, i64* %data_size12, align 8, !tbaa !16
  br label %cond.end

cond.end:                                         ; preds = %if.end, %if.end11, %cond.true
  %r.032 = phi i32 [ %r.0, %cond.true ], [ 0, %if.end11 ], [ 0, %if.end ]
  %cond = phi i64 [ %4, %cond.true ], [ %val_size, %if.end11 ], [ %val_size, %if.end ]
  store i64 %cond, i64* %return_size, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %r.032, %cond.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_int32(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32* noundef %buf) local_unnamed_addr #5 {
entry:
  %0 = bitcast i32* %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 1, i8* noundef %0, i64 noundef 4) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @general_get_uint(%struct.ossl_param_st* nocapture noundef readonly %p, i8* noundef %val, i64 noundef %val_size) unnamed_addr #4 {
entry:
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %0, label %return [
    i32 1, label %if.then
    i32 2, label %if.then3
  ]

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !17
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %2 = load i64, i64* %data_size, align 8, !tbaa !16
  %call = tail call fastcc i32 @unsigned_from_signed(i8* noundef %val, i64 noundef %val_size, i8* noundef %1, i64 noundef %2) #16
  br label %return

if.then3:                                         ; preds = %entry
  %data4 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %3 = load i8*, i8** %data4, align 8, !tbaa !17
  %data_size5 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %4 = load i64, i64* %data_size5, align 8, !tbaa !16
  %call6 = tail call fastcc i32 @unsigned_from_unsigned(i8* noundef %val, i64 noundef %val_size, i8* noundef %3, i64 noundef %4) #16
  br label %return

return:                                           ; preds = %entry, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.then3 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @general_set_uint(%struct.ossl_param_st* nocapture noundef %p, i8* noundef %val, i64 noundef %val_size) unnamed_addr #4 {
entry:
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 %val_size, i64* %return_size, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %1, label %cond.end [
    i32 1, label %if.then2
    i32 2, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %2 = load i64, i64* %data_size, align 8, !tbaa !16
  %call = tail call fastcc i32 @signed_from_unsigned(i8* noundef nonnull %0, i64 noundef %2, i8* noundef %val, i64 noundef %val_size) #16
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %data_size8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %3 = load i64, i64* %data_size8, align 8, !tbaa !16
  %call9 = tail call fastcc i32 @unsigned_from_unsigned(i8* noundef nonnull %0, i64 noundef %3, i8* noundef %val, i64 noundef %val_size) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.then2
  %r.0 = phi i32 [ %call, %if.then2 ], [ %call9, %if.then6 ]
  %tobool.not = icmp eq i32 %r.0, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end11
  %data_size12 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %4 = load i64, i64* %data_size12, align 8, !tbaa !16
  br label %cond.end

cond.end:                                         ; preds = %if.end, %if.end11, %cond.true
  %r.032 = phi i32 [ %r.0, %cond.true ], [ 0, %if.end11 ], [ 0, %if.end ]
  %cond = phi i64 [ %4, %cond.true ], [ %val_size, %if.end11 ], [ %val_size, %if.end ]
  store i64 %cond, i64* %return_size, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %r.032, %cond.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_uint32(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32* noundef %buf) local_unnamed_addr #5 {
entry:
  %0 = bitcast i32* %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 2, i8* noundef %0, i64 noundef 4) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_int64(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i64* noundef %buf) local_unnamed_addr #5 {
entry:
  %0 = bitcast i64* %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 1, i8* noundef %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_uint64(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i64* noundef %buf) local_unnamed_addr #5 {
entry:
  %0 = bitcast i64* %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 2, i8* noundef %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_size_t(%struct.ossl_param_st* noundef %p, i64* noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_get_uint64(%struct.ossl_param_st* noundef %p, i64* noundef %val) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_size_t(%struct.ossl_param_st* noundef %p, i64 noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_set_uint64(%struct.ossl_param_st* noundef %p, i64 noundef %val) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i64* noundef %buf) local_unnamed_addr #5 {
entry:
  %0 = bitcast i64* %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 2, i8* noundef %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_time_t(%struct.ossl_param_st* noundef %p, i64* noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_get_int64(%struct.ossl_param_st* noundef %p, i64* noundef %val) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_time_t(%struct.ossl_param_st* noundef %p, i64 noundef %val) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @OSSL_PARAM_set_int64(%struct.ossl_param_st* noundef %p, i64 noundef %val) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_time_t(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i64* noundef %buf) local_unnamed_addr #5 {
entry:
  %0 = bitcast i64* %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 1, i8* noundef %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef readonly %p, %struct.bignum_st** noundef %val) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.bignum_st** %val, null
  %cmp1 = icmp eq %struct.ossl_param_st* %p, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  %cmp3.not = icmp eq i32 %0, 2
  br i1 %cmp3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !17
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %2 = load i64, i64* %data_size, align 8, !tbaa !16
  %conv = trunc i64 %2 to i32
  %3 = load %struct.bignum_st*, %struct.bignum_st** %val, align 8, !tbaa !22
  %call = tail call %struct.bignum_st* @BN_native2bn(i8* noundef %1, i32 noundef %conv, %struct.bignum_st* noundef %3) #17
  %cmp4.not = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp4.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end
  store %struct.bignum_st* %call, %struct.bignum_st** %val, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false2, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 0, %lor.lhs.false2 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_native2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef %p, %struct.bignum_st* noundef %val) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 0, i64* %return_size, align 8, !tbaa !13
  %cmp1 = icmp eq %struct.bignum_st* %val, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  %cmp2.not = icmp eq i32 %0, 2
  br i1 %cmp2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %call = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %val) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end4
  %call7 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %val) #17
  %add = add nsw i32 %call7, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  store i64 %conv, i64* %return_size, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp9 = icmp eq i8* %1, null
  br i1 %cmp9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end6
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %2 = load i64, i64* %data_size, align 8, !tbaa !16
  %cmp13.not = icmp ult i64 %2, %conv
  br i1 %cmp13.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %if.end12
  store i64 %2, i64* %return_size, align 8, !tbaa !13
  %conv20 = trunc i64 %2 to i32
  %call21 = tail call i32 @BN_bn2nativepad(%struct.bignum_st* noundef nonnull %val, i8* noundef nonnull %1, i32 noundef %conv20) #17
  %3 = xor i32 %call21, -1
  %call21.lobit.not = lshr i32 %3, 31
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6, %if.end4, %if.end, %lor.lhs.false, %entry, %if.then15
  %retval.0 = phi i32 [ %call21.lobit.not, %if.then15 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end4 ], [ 1, %if.end6 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #6

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #6

declare i32 @BN_bn2nativepad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_BN(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i8* noundef %buf, i64 noundef %bsize) local_unnamed_addr #5 {
entry:
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 2, i8* noundef %buf, i64 noundef %bsize) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define i32 @OSSL_PARAM_get_double(%struct.ossl_param_st* noundef readonly %p, double* noundef writeonly %val) local_unnamed_addr #7 {
entry:
  %cmp = icmp eq double* %val, null
  %cmp1 = icmp eq %struct.ossl_param_st* %p, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %0, label %cleanup [
    i32 3, label %if.then3
    i32 2, label %if.then6
    i32 1, label %if.then22
  ]

if.then3:                                         ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %1 = load i64, i64* %data_size, align 8, !tbaa !16
  %cond44 = icmp eq i64 %1, 8
  br i1 %cond44, label %sw.bb, label %cleanup

sw.bb:                                            ; preds = %if.then3
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = bitcast i8** %data to double**
  %3 = load double*, double** %2, align 8, !tbaa !17
  %4 = load double, double* %3, align 8, !tbaa !20
  br label %cleanup.sink.split

if.then6:                                         ; preds = %if.end
  %data_size7 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %5 = load i64, i64* %data_size7, align 8, !tbaa !16
  switch i64 %5, label %cleanup [
    i64 4, label %sw.bb8
    i64 8, label %sw.bb10
  ]

sw.bb8:                                           ; preds = %if.then6
  %data9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %6 = bitcast i8** %data9 to i32**
  %7 = load i32*, i32** %6, align 8, !tbaa !17
  %8 = load i32, i32* %7, align 4, !tbaa !18
  %conv = uitofp i32 %8 to double
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %if.then6
  %data11 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %9 = bitcast i8** %data11 to i64**
  %10 = load i64*, i64** %9, align 8, !tbaa !17
  %11 = load i64, i64* %10, align 8, !tbaa !19
  %cmp12 = icmp ult i64 %11, 9007199254740992
  br i1 %cmp12, label %if.then14, label %cleanup

if.then14:                                        ; preds = %sw.bb10
  %conv15 = uitofp i64 %11 to double
  br label %cleanup.sink.split

if.then22:                                        ; preds = %if.end
  %data_size23 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %12 = load i64, i64* %data_size23, align 8, !tbaa !16
  switch i64 %12, label %cleanup [
    i64 4, label %sw.bb24
    i64 8, label %sw.bb27
  ]

sw.bb24:                                          ; preds = %if.then22
  %data25 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %13 = bitcast i8** %data25 to i32**
  %14 = load i32*, i32** %13, align 8, !tbaa !17
  %15 = load i32, i32* %14, align 4, !tbaa !18
  %conv26 = sitofp i32 %15 to double
  br label %cleanup.sink.split

sw.bb27:                                          ; preds = %if.then22
  %data28 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %16 = bitcast i8** %data28 to i64**
  %17 = load i64*, i64** %16, align 8, !tbaa !17
  %18 = load i64, i64* %17, align 8, !tbaa !19
  %19 = tail call i64 @llvm.abs.i64(i64 %18, i1 true)
  %cmp34 = icmp ult i64 %19, 9007199254740992
  br i1 %cmp34, label %if.then36, label %cleanup

if.then36:                                        ; preds = %sw.bb27
  %conv37 = sitofp i64 %18 to double
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %sw.bb8, %if.then14, %sw.bb24, %if.then36
  %conv37.sink = phi double [ %conv37, %if.then36 ], [ %conv26, %sw.bb24 ], [ %conv15, %if.then14 ], [ %conv, %sw.bb8 ], [ %4, %sw.bb ]
  store double %conv37.sink, double* %val, align 8, !tbaa !20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then3, %sw.bb27, %if.then22, %if.then6, %sw.bb10, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %sw.bb10 ], [ 0, %if.then6 ], [ 0, %if.then22 ], [ 0, %sw.bb27 ], [ 0, %if.then3 ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @OSSL_PARAM_set_double(%struct.ossl_param_st* noundef %p, double noundef %val) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 0, i64* %return_size, align 8, !tbaa !13
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  switch i32 %0, label %return [
    i32 3, label %if.then2
    i32 2, label %land.lhs.true
    i32 1, label %land.lhs.true48
  ]

if.then2:                                         ; preds = %if.end
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp4 = icmp eq i8* %1, null
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.then2
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %2 = load i64, i64* %data_size, align 8, !tbaa !16
  %cond = icmp eq i64 %2, 8
  br i1 %cond, label %sw.bb, label %return

sw.bb:                                            ; preds = %if.end6
  %3 = bitcast i8* %1 to double*
  store double %val, double* %3, align 8, !tbaa !20
  br label %return

land.lhs.true:                                    ; preds = %if.end
  %conv = fptoui double %val to i64
  %conv10 = uitofp i64 %conv to double
  %cmp11 = fcmp oeq double %conv10, %val
  br i1 %cmp11, label %if.then13, label %return

if.then13:                                        ; preds = %land.lhs.true
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %data15 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %4 = load i8*, i8** %data15, align 8, !tbaa !17
  %cmp16 = icmp eq i8* %4, null
  %5 = bitcast i8* %4 to i64*
  %6 = bitcast i8* %4 to i32*
  br i1 %cmp16, label %return, label %if.end19

if.end19:                                         ; preds = %if.then13
  %data_size20 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %7 = load i64, i64* %data_size20, align 8, !tbaa !16
  switch i64 %7, label %return [
    i64 4, label %sw.bb21
    i64 8, label %sw.bb32
  ]

sw.bb21:                                          ; preds = %if.end19
  %cmp22 = fcmp oge double %val, 0.000000e+00
  %cmp25 = fcmp ole double %val, 0x41EFFFFFFFE00000
  %or.cond = and i1 %cmp22, %cmp25
  br i1 %or.cond, label %if.then27, label %return

if.then27:                                        ; preds = %sw.bb21
  store i64 4, i64* %return_size, align 8, !tbaa !13
  %conv29 = fptoui double %val to i32
  store i32 %conv29, i32* %6, align 4, !tbaa !18
  br label %return

sw.bb32:                                          ; preds = %if.end19
  %cmp33 = fcmp oge double %val, 0.000000e+00
  %cmp36 = fcmp olt double %val, 0x43F0000000000000
  %or.cond87 = and i1 %cmp33, %cmp36
  br i1 %or.cond87, label %if.then38, label %return

if.then38:                                        ; preds = %sw.bb32
  store i64 %conv, i64* %5, align 8, !tbaa !19
  br label %return

land.lhs.true48:                                  ; preds = %if.end
  %conv49 = fptosi double %val to i64
  %conv50 = sitofp i64 %conv49 to double
  %cmp51 = fcmp oeq double %conv50, %val
  br i1 %cmp51, label %if.then53, label %return

if.then53:                                        ; preds = %land.lhs.true48
  store i64 8, i64* %return_size, align 8, !tbaa !13
  %data55 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %8 = load i8*, i8** %data55, align 8, !tbaa !17
  %cmp56 = icmp eq i8* %8, null
  %9 = bitcast i8* %8 to i64*
  %10 = bitcast i8* %8 to i32*
  br i1 %cmp56, label %return, label %if.end59

if.end59:                                         ; preds = %if.then53
  %data_size60 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %11 = load i64, i64* %data_size60, align 8, !tbaa !16
  switch i64 %11, label %return [
    i64 4, label %sw.bb61
    i64 8, label %sw.bb72
  ]

sw.bb61:                                          ; preds = %if.end59
  %cmp62 = fcmp oge double %val, 0xC1E0000000000000
  %cmp65 = fcmp ole double %val, 0x41DFFFFFFFC00000
  %or.cond88 = and i1 %cmp62, %cmp65
  br i1 %or.cond88, label %if.then67, label %return

if.then67:                                        ; preds = %sw.bb61
  store i64 4, i64* %return_size, align 8, !tbaa !13
  %conv69 = fptosi double %val to i32
  store i32 %conv69, i32* %10, align 4, !tbaa !18
  br label %return

sw.bb72:                                          ; preds = %if.end59
  %cmp73 = fcmp oge double %val, 0xC3E0000000000000
  %cmp76 = fcmp olt double %val, 0x43E0000000000000
  %or.cond89 = and i1 %cmp73, %cmp76
  br i1 %or.cond89, label %if.then78, label %return

if.then78:                                        ; preds = %sw.bb72
  store i64 %conv49, i64* %9, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true, %if.end6, %land.lhs.true48, %sw.bb72, %sw.bb61, %if.end59, %if.end19, %sw.bb21, %sw.bb32, %if.then53, %if.then13, %if.then2, %entry, %if.then78, %if.then67, %if.then38, %if.then27, %sw.bb
  %retval.0 = phi i32 [ 1, %sw.bb ], [ 1, %if.then38 ], [ 1, %if.then27 ], [ 1, %if.then78 ], [ 1, %if.then67 ], [ 0, %entry ], [ 1, %if.then2 ], [ 1, %if.then13 ], [ 1, %if.then53 ], [ 0, %sw.bb32 ], [ 0, %sw.bb21 ], [ 0, %if.end19 ], [ 0, %if.end59 ], [ 0, %sw.bb61 ], [ 0, %sw.bb72 ], [ 0, %land.lhs.true48 ], [ 0, %if.end6 ], [ 0, %land.lhs.true ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_double(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, double* noundef %buf) local_unnamed_addr #5 {
entry:
  %0 = bitcast double* %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 3, i8* noundef %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef %p, i8** noundef %val, i64 noundef %max_len) local_unnamed_addr #4 {
entry:
  %max_len.addr = alloca i64, align 8
  store i64 %max_len, i64* %max_len.addr, align 8, !tbaa !19
  %call = call fastcc i32 @get_string_internal(%struct.ossl_param_st* noundef %p, i8** noundef %val, i64* noundef nonnull %max_len.addr, i64* noundef null, i32 noundef 4) #16
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %0 = load i64, i64* %data_size, align 8, !tbaa !16
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %max_len.addr, align 8, !tbaa !19
  %cmp1.not = icmp ult i64 %0, %1
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !17
  %call3 = tail call i64 @OPENSSL_strnlen(i8* noundef %2, i64 noundef %0) #17
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %data_length.0 = phi i64 [ %call3, %if.then2 ], [ %0, %if.end ]
  %cmp5.not = icmp ult i64 %data_length.0, %1
  br i1 %cmp5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end4
  %3 = load i8*, i8** %val, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %data_length.0
  store i8 0, i8* %arrayidx, align 1, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry, %if.end7
  %retval.0 = phi i32 [ 1, %if.end7 ], [ 0, %entry ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_string_internal(%struct.ossl_param_st* noundef readonly %p, i8** noundef %val, i64* nocapture noundef %max_len, i64* noundef writeonly %used_len, i32 noundef %type) unnamed_addr #4 {
entry:
  %cmp = icmp eq i8** %val, null
  %cmp1 = icmp eq i64* %used_len, null
  %or.cond = and i1 %cmp, %cmp1
  %cmp2 = icmp eq %struct.ossl_param_st* %p, null
  %or.cond35 = or i1 %cmp2, %or.cond
  br i1 %or.cond35, label %cleanup33, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  %cmp4.not = icmp eq i32 %0, %type
  br i1 %cmp4.not, label %if.end, label %cleanup33

if.end:                                           ; preds = %lor.lhs.false3
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %1 = load i64, i64* %data_size, align 8, !tbaa !16
  %cmp5 = icmp eq i32 %type, 4
  %cmp6 = icmp eq i64 %1, 0
  %2 = select i1 %cmp5, i1 true, i1 %cmp6
  %3 = zext i1 %2 to i64
  %add = add i64 %1, %3
  br i1 %cmp1, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  store i64 %1, i64* %used_len, align 8, !tbaa !19
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp11 = icmp eq i8* %4, null
  %brmerge = or i1 %cmp, %cmp11
  %not.cmp11 = xor i1 %cmp11, true
  %.mux = zext i1 %not.cmp11 to i32
  br i1 %brmerge, label %cleanup33, label %if.end18

if.end18:                                         ; preds = %if.end10
  %5 = load i8*, i8** %val, align 8, !tbaa !22
  %cmp19 = icmp eq i8* %5, null
  br i1 %cmp19, label %if.then21, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  %.pre = load i64, i64* %max_len, align 8, !tbaa !19
  br label %if.end26

if.then21:                                        ; preds = %if.end18
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef 1099) #17
  %cmp22 = icmp eq i8* %call, null
  br i1 %cmp22, label %cleanup33, label %if.end25

if.end25:                                         ; preds = %if.then21
  store i8* %call, i8** %val, align 8, !tbaa !22
  store i64 %add, i64* %max_len, align 8, !tbaa !19
  br label %if.end26

if.end26:                                         ; preds = %if.end18.if.end26_crit_edge, %if.end25
  %6 = phi i8* [ %5, %if.end18.if.end26_crit_edge ], [ %call, %if.end25 ]
  %7 = phi i64 [ %.pre, %if.end18.if.end26_crit_edge ], [ %add, %if.end25 ]
  %cmp27 = icmp ult i64 %7, %1
  br i1 %cmp27, label %cleanup33, label %if.end30

if.end30:                                         ; preds = %if.end26
  %8 = load i8*, i8** %data, align 8, !tbaa !17
  %call32 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %8, i64 noundef %1) #17
  br label %cleanup33

cleanup33:                                        ; preds = %if.end10, %if.then21, %if.end26, %lor.lhs.false3, %entry, %if.end30
  %retval.1 = phi i32 [ 1, %if.end30 ], [ 0, %entry ], [ 0, %lor.lhs.false3 ], [ %.mux, %if.end10 ], [ 0, %if.end26 ], [ 0, %if.then21 ]
  ret i32 %retval.1
}

declare i64 @OPENSSL_strnlen(i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef %p, i8** noundef %val, i64 noundef %max_len, i64* noundef %used_len) local_unnamed_addr #4 {
entry:
  %max_len.addr = alloca i64, align 8
  store i64 %max_len, i64* %max_len.addr, align 8, !tbaa !19
  %call = call fastcc i32 @get_string_internal(%struct.ossl_param_st* noundef %p, i8** noundef %val, i64* noundef nonnull %max_len.addr, i64* noundef %used_len, i32 noundef 5) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_utf8_string(%struct.ossl_param_st* noundef %p, i8* noundef %val) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 0, i64* %return_size, align 8, !tbaa !13
  %cmp1 = icmp eq i8* %val, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call i64 @strlen(i8* noundef nonnull %val) #15
  %call4 = tail call fastcc i32 @set_string_internal(%struct.ossl_param_st* noundef nonnull %p, i8* noundef nonnull %val, i64 noundef %call, i32 noundef 4) #16
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_string_internal(%struct.ossl_param_st* nocapture noundef %p, i8* noundef %val, i64 noundef %len, i32 noundef %type) unnamed_addr #4 {
entry:
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 %len, i64* %return_size, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !15
  %cmp1.not = icmp eq i32 %1, %type
  br i1 %cmp1.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %2 = load i64, i64* %data_size, align 8, !tbaa !16
  %cmp2 = icmp ult i64 %2, %len
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %call = tail call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %val, i64 noundef %len) #17
  %cmp6 = icmp eq i32 %type, 4
  br i1 %cmp6, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end4
  %3 = load i64, i64* %data_size, align 8, !tbaa !16
  %cmp8 = icmp ugt i64 %3, %len
  br i1 %cmp8, label %if.then9, label %return

if.then9:                                         ; preds = %land.lhs.true
  %4 = load i8*, i8** %data, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %len
  store i8 0, i8* %arrayidx, align 1, !tbaa !23
  br label %return

return:                                           ; preds = %if.end4, %land.lhs.true, %if.then9, %if.end, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %if.then9 ], [ 1, %land.lhs.true ], [ 1, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_set_octet_string(%struct.ossl_param_st* noundef %p, i8* noundef %val, i64 noundef %len) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 0, i64* %return_size, align 8, !tbaa !13
  %cmp1 = icmp eq i8* %val, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call fastcc i32 @set_string_internal(%struct.ossl_param_st* noundef nonnull %p, i8* noundef nonnull %val, i64 noundef %len, i32 noundef 5) #16
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i8* noundef %buf, i64 noundef %bsize) local_unnamed_addr #9 {
entry:
  %cmp = icmp ne i8* %buf, null
  %cmp1 = icmp eq i64 %bsize, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %buf) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bsize.addr.0 = phi i64 [ %call, %if.then ], [ %bsize, %entry ]
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 4, i8* noundef %buf, i64 noundef %bsize.addr.0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i8* noundef %buf, i64 noundef %bsize) local_unnamed_addr #5 {
entry:
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 5, i8* noundef %buf, i64 noundef %bsize) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef %p, i8** noundef %val) local_unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @get_ptr_internal(%struct.ossl_param_st* noundef %p, i8** noundef %val, i64* noundef null, i32 noundef 6) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @get_ptr_internal(%struct.ossl_param_st* noundef readonly %p, i8** noundef writeonly %val, i64* noundef writeonly %used_len, i32 noundef %type) unnamed_addr #8 {
entry:
  %cmp = icmp eq i8** %val, null
  %cmp1 = icmp eq %struct.ossl_param_st* %p, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  %cmp3.not = icmp eq i32 %0, %type
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false2
  %cmp4.not = icmp eq i64* %used_len, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %1 = load i64, i64* %data_size, align 8, !tbaa !16
  store i64 %1, i64* %used_len, align 8, !tbaa !19
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = bitcast i8** %data to i8***
  %3 = load i8**, i8*** %2, align 8, !tbaa !17
  %4 = load i8*, i8** %3, align 8, !tbaa !22
  store i8* %4, i8** %val, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false2, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %lor.lhs.false2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @OSSL_PARAM_get_octet_ptr(%struct.ossl_param_st* noundef %p, i8** noundef %val, i64* noundef %used_len) local_unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @get_ptr_internal(%struct.ossl_param_st* noundef %p, i8** noundef %val, i64* noundef %used_len, i32 noundef 7) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @OSSL_PARAM_set_utf8_ptr(%struct.ossl_param_st* noundef %p, i8* noundef %val) local_unnamed_addr #9 {
entry:
  %cmp = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 0, i64* %return_size, align 8, !tbaa !13
  %cmp1 = icmp eq i8* %val, null
  br i1 %cmp1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  %call = tail call i64 @strlen(i8* noundef nonnull %val) #15
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i64 [ %call, %cond.false ], [ 0, %if.end ]
  %call2 = tail call fastcc i32 @set_ptr_internal(%struct.ossl_param_st* noundef nonnull %p, i8* noundef %val, i32 noundef 6, i64 noundef %cond) #16
  br label %return

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call2, %cond.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @set_ptr_internal(%struct.ossl_param_st* nocapture noundef %p, i8* noundef %val, i32 noundef %type, i64 noundef %len) unnamed_addr #8 {
entry:
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 %len, i64* %return_size, align 8, !tbaa !13
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  %cmp.not = icmp eq i32 %0, %type
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp1.not = icmp eq i8* %1, null
  br i1 %cmp1.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = bitcast i8* %1 to i8**
  store i8* %val, i8** %2, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then2 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @OSSL_PARAM_set_octet_ptr(%struct.ossl_param_st* noundef %p, i8* noundef %val, i64 noundef %used_len) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq %struct.ossl_param_st* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 4
  store i64 0, i64* %return_size, align 8, !tbaa !13
  %call = tail call fastcc i32 @set_ptr_internal(%struct.ossl_param_st* noundef nonnull %p, i8* noundef %val, i32 noundef 7, i64 noundef %used_len) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i8** noundef %buf, i64 noundef %bsize) local_unnamed_addr #5 {
entry:
  %0 = bitcast i8** %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 6, i8* noundef %0, i64 noundef %bsize) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i8** noundef %buf, i64 noundef %bsize) local_unnamed_addr #5 {
entry:
  %0 = bitcast i8** %buf to i8*
  tail call fastcc void @ossl_param_construct(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8 %agg.result, i8* noundef %key, i32 noundef 7, i8* noundef %0, i64 noundef %bsize) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define void @OSSL_PARAM_construct_end(%struct.ossl_param_st* noalias nocapture writeonly sret(%struct.ossl_param_st) align 8 %agg.result) local_unnamed_addr #10 {
entry:
  %0 = bitcast %struct.ossl_param_st* %agg.result to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @OSSL_PARAM_get_utf8_string_ptr(%struct.ossl_param_st* noundef %p, i8** noundef %val) local_unnamed_addr #8 {
entry:
  %call = tail call i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef %p, i8** noundef %val) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @get_string_ptr_internal(%struct.ossl_param_st* noundef %p, i8** noundef %val, i64* noundef null, i32 noundef 4) #16
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @get_string_ptr_internal(%struct.ossl_param_st* noundef readonly %p, i8** noundef writeonly %val, i64* noundef writeonly %used_len, i32 noundef %type) unnamed_addr #8 {
entry:
  %cmp = icmp eq i8** %val, null
  %cmp1 = icmp eq %struct.ossl_param_st* %p, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !15
  %cmp3.not = icmp eq i32 %0, %type
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false2
  %cmp4.not = icmp eq i64* %used_len, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 3
  %1 = load i64, i64* %data_size, align 8, !tbaa !16
  store i64 %1, i64* %used_len, align 8, !tbaa !19
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !17
  store i8* %2, i8** %val, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false2, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %lor.lhs.false2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @OSSL_PARAM_get_octet_string_ptr(%struct.ossl_param_st* noundef %p, i8** noundef %val, i64* noundef %used_len) local_unnamed_addr #8 {
entry:
  %call = tail call i32 @OSSL_PARAM_get_octet_ptr(%struct.ossl_param_st* noundef %p, i8** noundef %val, i64* noundef %used_len) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @get_string_ptr_internal(%struct.ossl_param_st* noundef %p, i8** noundef %val, i64* noundef %used_len, i32 noundef 5) #16
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @signed_from_signed(i8* noundef %dest, i64 noundef %dest_len, i8* noundef %src, i64 noundef %src_len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @is_negative(i8* noundef %src, i64 noundef %src_len) #16
  %tobool.not = icmp ne i32 %call, 0
  %conv = sext i1 %tobool.not to i8
  %call1 = tail call fastcc i32 @copy_integer(i8* noundef %dest, i64 noundef %dest_len, i8* noundef %src, i64 noundef %src_len, i8 noundef zeroext %conv, i32 noundef 1) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @signed_from_unsigned(i8* noundef %dest, i64 noundef %dest_len, i8* noundef %src, i64 noundef %src_len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @copy_integer(i8* noundef %dest, i64 noundef %dest_len, i8* noundef %src, i64 noundef %src_len, i8 noundef zeroext 0, i32 noundef 1) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @copy_integer(i8* noundef %dest, i64 noundef %dest_len, i8* noundef %src, i64 noundef %src_len, i8 noundef zeroext %pad, i32 noundef %signed_int) unnamed_addr #4 {
entry:
  %cmp = icmp ult i64 %src_len, %dest_len
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = sub i64 %dest_len, %src_len
  %add.ptr = getelementptr inbounds i8, i8* %dest, i64 %src_len
  %conv = zext i8 %pad to i32
  %call = tail call i8* @memset(i8* noundef %add.ptr, i32 noundef %conv, i64 noundef %sub) #17
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %sub2 = sub i64 %src_len, %dest_len
  %add.ptr3 = getelementptr inbounds i8, i8* %src, i64 %dest_len
  %call4 = tail call fastcc i32 @check_sign_bytes(i8* noundef %add.ptr3, i64 noundef %sub2, i8 noundef zeroext %pad) #16
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %tobool5.not = icmp eq i32 %signed_int, 0
  br i1 %tobool5.not, label %cleanup.sink.split, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %sub7 = add i64 %dest_len, -1
  %arrayidx = getelementptr inbounds i8, i8* %src, i64 %sub7
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !23
  %xor34 = xor i8 %0, %pad
  %cmp9.not = icmp sgt i8 %xor34, -1
  br i1 %cmp9.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %lor.lhs.false, %land.lhs.true, %if.then
  %src_len.sink = phi i64 [ %src_len, %if.then ], [ %dest_len, %land.lhs.true ], [ %dest_len, %lor.lhs.false ]
  %call1 = tail call i8* @memcpy(i8* noundef %dest, i8* noundef %src, i64 noundef %src_len.sink) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.else ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @is_negative(i8* nocapture noundef readonly %number, i64 noundef %s) unnamed_addr #2 {
entry:
  %sub = add i64 %s, -1
  %arrayidx = getelementptr inbounds i8, i8* %number, i64 %sub
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !23
  %1 = and i8 %0, -128
  %and = zext i8 %1 to i32
  ret i32 %and
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @check_sign_bytes(i8* nocapture noundef readonly %p, i64 noundef %n, i8 noundef zeroext %s) unnamed_addr #13 {
entry:
  %cmp7.not = icmp eq i64 %n, 0
  br i1 %cmp7.not, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %n
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !24

for.body:                                         ; preds = %entry, %for.cond
  %i.08 = phi i64 [ %inc, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8, i8* %p, i64 %i.08
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !23
  %cmp2.not = icmp eq i8 %0, %s
  %inc = add nuw i64 %i.08, 1
  br i1 %cmp2.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @unsigned_from_signed(i8* noundef %dest, i64 noundef %dest_len, i8* noundef %src, i64 noundef %src_len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @is_negative(i8* noundef %src, i64 noundef %src_len) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @copy_integer(i8* noundef %dest, i64 noundef %dest_len, i8* noundef %src, i64 noundef %src_len, i8 noundef zeroext 0, i32 noundef 0) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @unsigned_from_unsigned(i8* noundef %dest, i64 noundef %dest_len, i8* noundef %src, i64 noundef %src_len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @copy_integer(i8* noundef %dest, i64 noundef %dest_len, i8* noundef %src, i64 noundef %src_len, i8 noundef zeroext 0, i32 noundef 0) #16
  ret i32 %call
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

attributes #0 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_param_st", !6, i64 0, !9, i64 8, !6, i64 16, !10, i64 24, !10, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !10, i64 32}
!14 = distinct !{!14, !12}
!15 = !{!5, !9, i64 8}
!16 = !{!5, !10, i64 24}
!17 = !{!5, !6, i64 16}
!18 = !{!9, !9, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"double", !7, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!7, !7, i64 0}
!24 = distinct !{!24, !12}
