; ModuleID = 'crypto/ct/ct_oct.c'
source_filename = "crypto/ct/ct_oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sct_st = type { i32, i8*, i64, i8*, i64, i64, i8*, i64, i8, i8, i8*, i64, i32, i32, i32 }
%struct.stack_st_SCT = type opaque
%struct.stack_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [19 x i8] c"crypto/ct/ct_oct.c\00", align 1
@__func__.o2i_SCT_signature = private unnamed_addr constant [18 x i8] c"o2i_SCT_signature\00", align 1
@__func__.o2i_SCT = private unnamed_addr constant [8 x i8] c"o2i_SCT\00", align 1
@__func__.i2o_SCT_signature = private unnamed_addr constant [18 x i8] c"i2o_SCT_signature\00", align 1
@__func__.i2o_SCT = private unnamed_addr constant [8 x i8] c"i2o_SCT\00", align 1
@__func__.o2i_SCT_LIST = private unnamed_addr constant [13 x i8] c"o2i_SCT_LIST\00", align 1
@__func__.i2o_SCT_LIST = private unnamed_addr constant [13 x i8] c"i2o_SCT_LIST\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @o2i_SCT_signature(%struct.sct_st* noundef %sct, i8** nocapture noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.o2i_SCT_signature, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 103, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult i64 %len, 5
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.o2i_SCT_signature, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 107, i8* noundef null) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load i8*, i8** %in, align 8, !tbaa !10
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %1, align 1, !tbaa !11
  %hash_alg = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 8
  store i8 %2, i8* %hash_alg, align 8, !tbaa !12
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !11
  %sig_alg = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 9
  store i8 %3, i8* %sig_alg, align 1, !tbaa !13
  %call = tail call i32 @SCT_get_signature_nid(%struct.sct_st* noundef nonnull %sct) #5
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.o2i_SCT_signature, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 107, i8* noundef null) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %incdec.ptr4 = getelementptr inbounds i8, i8* %1, i64 2
  %4 = load i8, i8* %incdec.ptr4, align 1, !tbaa !11
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %arrayidx8 = getelementptr inbounds i8, i8* %1, i64 3
  %5 = load i8, i8* %arrayidx8, align 1, !tbaa !11
  %conv9 = zext i8 %5 to i64
  %or = or i64 %shl, %conv9
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 4
  %6 = load i8*, i8** %in, align 8, !tbaa !10
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i64 %sub.ptr.sub.neg, %len
  %cmp11 = icmp ugt i64 %or, %sub
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end7
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.o2i_SCT_signature, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 107, i8* noundef null) #5
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call15 = tail call i32 @SCT_set1_signature(%struct.sct_st* noundef nonnull %sct, i8* noundef nonnull %add.ptr, i64 noundef %or) #5
  %cmp16.not = icmp eq i32 %call15, 1
  br i1 %cmp16.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end14
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr, i64 %or
  store i8* %add.ptr21, i8** %in, align 8, !tbaa !10
  %sub20.neg = add i64 %or, %len
  %sub22 = sub i64 %sub20.neg, %sub
  %conv23 = trunc i64 %sub22 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end19, %if.then13, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then6 ], [ -1, %if.then13 ], [ %conv23, %if.end19 ], [ -1, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @SCT_get_signature_nid(%struct.sct_st* noundef) local_unnamed_addr #2

declare i32 @SCT_set1_signature(%struct.sct_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.sct_st* @o2i_SCT(%struct.sct_st** noundef %psct, i8** nocapture noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = add i64 %len, -65536
  %2 = icmp ult i64 %1, -65535
  br i1 %2, label %err.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.sct_st* @SCT_new() #5
  %cmp2 = icmp eq %struct.sct_st* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %3 = load i8*, i8** %in, align 8, !tbaa !10
  %4 = load i8, i8* %3, align 1, !tbaa !11
  %conv = zext i8 %4 to i32
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %call, i64 0, i32 0
  store i32 %conv, i32* %version, align 8, !tbaa !4
  %cmp6 = icmp eq i8 %4, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  %cmp9 = icmp ult i64 %len, 43
  br i1 %cmp9, label %err.sink.split, label %if.end12

if.end12:                                         ; preds = %if.then8
  %sub = add nsw i64 %len, -43
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %call13 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %incdec.ptr, i64 noundef 32, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 104) #5
  %log_id = getelementptr inbounds %struct.sct_st, %struct.sct_st* %call, i64 0, i32 3
  store i8* %call13, i8** %log_id, align 8, !tbaa !14
  %cmp15 = icmp eq i8* %call13, null
  br i1 %cmp15, label %err, label %if.end18

if.end18:                                         ; preds = %if.end12
  %log_id_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %call, i64 0, i32 4
  store i64 32, i64* %log_id_len, align 8, !tbaa !15
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 33
  %incdec.ptr19 = getelementptr inbounds i8, i8* %3, i64 34
  %5 = load i8, i8* %add.ptr, align 1, !tbaa !11
  %conv20 = zext i8 %5 to i64
  %shl = shl nuw i64 %conv20, 56
  %timestamp = getelementptr inbounds %struct.sct_st, %struct.sct_st* %call, i64 0, i32 5
  store i64 %shl, i64* %timestamp, align 8, !tbaa !16
  %incdec.ptr21 = getelementptr inbounds i8, i8* %3, i64 35
  %6 = load i8, i8* %incdec.ptr19, align 1, !tbaa !11
  %conv22 = zext i8 %6 to i64
  %shl23 = shl nuw nsw i64 %conv22, 48
  %or = or i64 %shl23, %shl
  store i64 %or, i64* %timestamp, align 8, !tbaa !16
  %incdec.ptr25 = getelementptr inbounds i8, i8* %3, i64 36
  %7 = load i8, i8* %incdec.ptr21, align 1, !tbaa !11
  %conv26 = zext i8 %7 to i64
  %shl27 = shl nuw nsw i64 %conv26, 40
  %or29 = or i64 %shl27, %or
  store i64 %or29, i64* %timestamp, align 8, !tbaa !16
  %incdec.ptr30 = getelementptr inbounds i8, i8* %3, i64 37
  store i8* %incdec.ptr30, i8** %p, align 8, !tbaa !10
  %8 = load i8, i8* %incdec.ptr25, align 1, !tbaa !11
  %conv31 = zext i8 %8 to i64
  %shl32 = shl nuw nsw i64 %conv31, 32
  %or34 = or i64 %shl32, %or29
  store i64 %or34, i64* %timestamp, align 8, !tbaa !16
  %incdec.ptr35 = getelementptr inbounds i8, i8* %3, i64 38
  %9 = load i8, i8* %incdec.ptr30, align 1, !tbaa !11
  %conv36 = zext i8 %9 to i64
  %shl37 = shl nuw nsw i64 %conv36, 24
  %or39 = or i64 %shl37, %or34
  store i64 %or39, i64* %timestamp, align 8, !tbaa !16
  %incdec.ptr40 = getelementptr inbounds i8, i8* %3, i64 39
  %10 = load i8, i8* %incdec.ptr35, align 1, !tbaa !11
  %conv41 = zext i8 %10 to i64
  %shl42 = shl nuw nsw i64 %conv41, 16
  %or44 = or i64 %shl42, %or39
  store i64 %or44, i64* %timestamp, align 8, !tbaa !16
  %incdec.ptr45 = getelementptr inbounds i8, i8* %3, i64 40
  %11 = load i8, i8* %incdec.ptr40, align 1, !tbaa !11
  %conv46 = zext i8 %11 to i64
  %shl47 = shl nuw nsw i64 %conv46, 8
  %or49 = or i64 %shl47, %or44
  store i64 %or49, i64* %timestamp, align 8, !tbaa !16
  %incdec.ptr50 = getelementptr inbounds i8, i8* %3, i64 41
  %12 = load i8, i8* %incdec.ptr45, align 1, !tbaa !11
  %conv51 = zext i8 %12 to i64
  %or53 = or i64 %or49, %conv51
  store i64 %or53, i64* %timestamp, align 8, !tbaa !16
  %13 = load i8, i8* %incdec.ptr50, align 1, !tbaa !11
  %conv54 = zext i8 %13 to i64
  %shl55 = shl nuw nsw i64 %conv54, 8
  %arrayidx56 = getelementptr inbounds i8, i8* %3, i64 42
  %14 = load i8, i8* %arrayidx56, align 1, !tbaa !11
  %conv57 = zext i8 %14 to i64
  %or58 = or i64 %shl55, %conv57
  %add.ptr60 = getelementptr inbounds i8, i8* %3, i64 43
  %cmp61 = icmp ult i64 %sub, %or58
  br i1 %cmp61, label %err.sink.split, label %if.end64

if.end64:                                         ; preds = %if.end18
  %cmp65.not = icmp eq i64 %or58, 0
  br i1 %cmp65.not, label %if.end74, label %if.then67

if.then67:                                        ; preds = %if.end64
  %call68 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %add.ptr60, i64 noundef %or58, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 118) #5
  %ext = getelementptr inbounds %struct.sct_st, %struct.sct_st* %call, i64 0, i32 6
  store i8* %call68, i8** %ext, align 8, !tbaa !17
  %cmp70 = icmp eq i8* %call68, null
  br i1 %cmp70, label %err, label %if.end74

if.end74:                                         ; preds = %if.then67, %if.end64
  %ext_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %call, i64 0, i32 7
  store i64 %or58, i64* %ext_len, align 8, !tbaa !18
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr60, i64 %or58
  store i8* %add.ptr75, i8** %p, align 8, !tbaa !10
  %sub76 = sub i64 %sub, %or58
  %call77 = call i32 @o2i_SCT_signature(%struct.sct_st* noundef nonnull %call, i8** noundef nonnull %p, i64 noundef %sub76) #7
  %cmp78 = icmp slt i32 %call77, 1
  br i1 %cmp78, label %err.sink.split, label %cleanup

cleanup:                                          ; preds = %if.end74
  %conv82150 = zext i32 %call77 to i64
  %sub83 = sub i64 %sub76, %conv82150
  %15 = load i8*, i8** %p, align 8, !tbaa !10
  %add.ptr84 = getelementptr inbounds i8, i8* %15, i64 %sub83
  br label %if.end94

if.else:                                          ; preds = %if.end4
  %call86 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %3, i64 noundef %len, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 135) #5
  %sct87 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %call, i64 0, i32 1
  store i8* %call86, i8** %sct87, align 8, !tbaa !19
  %cmp89 = icmp eq i8* %call86, null
  br i1 %cmp89, label %err, label %if.end92

if.end92:                                         ; preds = %if.else
  %sct_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %call, i64 0, i32 2
  store i64 %len, i64* %sct_len, align 8, !tbaa !20
  %add.ptr93 = getelementptr inbounds i8, i8* %3, i64 %len
  br label %if.end94

if.end94:                                         ; preds = %cleanup, %if.end92
  %storemerge = phi i8* [ %add.ptr93, %if.end92 ], [ %add.ptr84, %cleanup ]
  store i8* %storemerge, i8** %in, align 8, !tbaa !10
  %cmp95.not = icmp eq %struct.sct_st** %psct, null
  br i1 %cmp95.not, label %cleanup99, label %if.then97

if.then97:                                        ; preds = %if.end94
  %16 = load %struct.sct_st*, %struct.sct_st** %psct, align 8, !tbaa !10
  tail call void @SCT_free(%struct.sct_st* noundef %16) #5
  store %struct.sct_st* %call, %struct.sct_st** %psct, align 8, !tbaa !10
  br label %cleanup99

err.sink.split:                                   ; preds = %if.end74, %if.end18, %if.then8, %entry
  %.sink = phi i32 [ 76, %entry ], [ 99, %if.then8 ], [ 114, %if.end18 ], [ 128, %if.end74 ]
  %sct.0.ph = phi %struct.sct_st* [ null, %entry ], [ %call, %if.then8 ], [ %call, %if.end18 ], [ %call, %if.end74 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.o2i_SCT, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 104, i8* noundef null) #5
  br label %err

err:                                              ; preds = %err.sink.split, %if.then67, %if.end12, %if.else, %if.end
  %sct.0 = phi %struct.sct_st* [ null, %if.end ], [ %call, %if.else ], [ %call, %if.end12 ], [ %call, %if.then67 ], [ %sct.0.ph, %err.sink.split ]
  tail call void @SCT_free(%struct.sct_st* noundef %sct.0) #5
  br label %cleanup99

cleanup99:                                        ; preds = %if.end94, %if.then97, %err
  %retval.0 = phi %struct.sct_st* [ null, %err ], [ %call, %if.then97 ], [ %call, %if.end94 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.sct_st* %retval.0
}

declare %struct.sct_st* @SCT_new() local_unnamed_addr #2

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @SCT_free(%struct.sct_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2o_SCT_signature(%struct.sct_st* noundef %sct, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SCT_signature_is_complete(%struct.sct_st* noundef %sct) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end2, label %err

if.end2:                                          ; preds = %if.end
  %sig_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 11
  %1 = load i64, i64* %sig_len, align 8, !tbaa !21
  %add = add i64 %1, 4
  %cmp3.not = icmp eq i8** %out, null
  br i1 %cmp3.not, label %if.end21, label %if.then4

if.then4:                                         ; preds = %if.end2
  %2 = load i8*, i8** %out, align 8, !tbaa !10
  %cmp5.not = icmp eq i8* %2, null
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %add
  br label %if.end11

if.else:                                          ; preds = %if.then4
  %call7 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 180) #5
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %err, label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %storemerge = phi i8* [ %add.ptr, %if.then6 ], [ %call7, %if.else ]
  %p.0 = phi i8* [ %2, %if.then6 ], [ %call7, %if.else ]
  store i8* %storemerge, i8** %out, align 8, !tbaa !10
  %hash_alg = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 8
  %3 = load i8, i8* %hash_alg, align 8, !tbaa !12
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  store i8 %3, i8* %p.0, align 1, !tbaa !11
  %sig_alg = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 9
  %4 = load i8, i8* %sig_alg, align 1, !tbaa !13
  %incdec.ptr12 = getelementptr inbounds i8, i8* %p.0, i64 2
  store i8 %4, i8* %incdec.ptr, align 1, !tbaa !11
  %5 = load i64, i64* %sig_len, align 8, !tbaa !21
  %shr = lshr i64 %5, 8
  %conv = trunc i64 %shr to i8
  store i8 %conv, i8* %incdec.ptr12, align 1, !tbaa !11
  %6 = load i64, i64* %sig_len, align 8, !tbaa !21
  %conv16 = trunc i64 %6 to i8
  %arrayidx17 = getelementptr inbounds i8, i8* %p.0, i64 3
  store i8 %conv16, i8* %arrayidx17, align 1, !tbaa !11
  %add.ptr18 = getelementptr inbounds i8, i8* %p.0, i64 4
  %sig = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 10
  %7 = load i8*, i8** %sig, align 8, !tbaa !22
  %8 = load i64, i64* %sig_len, align 8, !tbaa !21
  %call20 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr18, i8* noundef %7, i64 noundef %8) #5
  br label %if.end21

if.end21:                                         ; preds = %if.end11, %if.end2
  %conv22 = trunc i64 %add to i32
  br label %cleanup

err:                                              ; preds = %if.else, %if.end, %entry
  %.sink49 = phi i32 [ 159, %entry ], [ 164, %if.end ], [ 182, %if.else ]
  %.sink = phi i32 [ 107, %entry ], [ 103, %if.end ], [ 786688, %if.else ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink49, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.i2o_SCT_signature, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef %.sink, i8* noundef null) #5
  tail call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 196) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end21
  %retval.0 = phi i32 [ -1, %err ], [ %conv22, %if.end21 ]
  ret i32 %retval.0
}

declare i32 @SCT_signature_is_complete(%struct.sct_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2o_SCT(%struct.sct_st* noundef %sct, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* null, i8** %p, align 8, !tbaa !10
  %call = tail call i32 @SCT_is_complete(%struct.sct_st* noundef %sct) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 0
  %1 = load i32, i32* %version, align 8, !tbaa !4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %ext_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 7
  %2 = load i64, i64* %ext_len, align 8, !tbaa !18
  %add2 = add i64 %2, 47
  %sig_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 11
  %3 = load i64, i64* %sig_len, align 8, !tbaa !21
  %add3 = add i64 %add2, %3
  br label %if.end4

if.else:                                          ; preds = %if.end
  %sct_len = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 2
  %4 = load i64, i64* %sct_len, align 8, !tbaa !20
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %len.0 = phi i64 [ %add3, %if.then1 ], [ %4, %if.else ]
  %cmp5 = icmp eq i8** %out, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %conv = trunc i64 %len.0 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %5 = load i8*, i8** %out, align 8, !tbaa !10
  %cmp8.not = icmp eq i8* %5, null
  br i1 %cmp8.not, label %if.else11, label %if.then10

if.then10:                                        ; preds = %if.end7
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %len.0
  br label %if.end17

if.else11:                                        ; preds = %if.end7
  %call12 = tail call i8* @CRYPTO_malloc(i64 noundef %len.0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 227) #5
  store i8* %call12, i8** %p, align 8, !tbaa !10
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %err.sink.split, label %if.else11.if.end17_crit_edge

if.else11.if.end17_crit_edge:                     ; preds = %if.else11
  %.pre = load i32, i32* %version, align 8, !tbaa !4
  br label %if.end17

if.end17:                                         ; preds = %if.else11.if.end17_crit_edge, %if.then10
  %6 = phi i8* [ %5, %if.then10 ], [ %call12, %if.else11.if.end17_crit_edge ]
  %7 = phi i32 [ %1, %if.then10 ], [ %.pre, %if.else11.if.end17_crit_edge ]
  %storemerge = phi i8* [ %add.ptr, %if.then10 ], [ %call12, %if.else11.if.end17_crit_edge ]
  %pstart.0 = phi i8* [ null, %if.then10 ], [ %call12, %if.else11.if.end17_crit_edge ]
  store i8* %storemerge, i8** %out, align 8, !tbaa !10
  %cmp19 = icmp eq i32 %7, 0
  br i1 %cmp19, label %if.then21, label %if.else85

if.then21:                                        ; preds = %if.end17
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !10
  store i8 0, i8* %6, align 1, !tbaa !11
  %8 = load i8*, i8** %p, align 8, !tbaa !10
  %log_id = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 3
  %9 = load i8*, i8** %log_id, align 8, !tbaa !14
  %call24 = tail call i8* @memcpy(i8* noundef %8, i8* noundef %9, i64 noundef 32) #5
  %add.ptr25 = getelementptr inbounds i8, i8* %8, i64 32
  %timestamp = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 5
  %10 = load i64, i64* %timestamp, align 8, !tbaa !16
  %shr = lshr i64 %10, 56
  %conv26 = trunc i64 %shr to i8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %8, i64 33
  store i8 %conv26, i8* %add.ptr25, align 1, !tbaa !11
  %11 = load i64, i64* %timestamp, align 8, !tbaa !16
  %shr29 = lshr i64 %11, 48
  %conv31 = trunc i64 %shr29 to i8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %8, i64 34
  store i8 %conv31, i8* %incdec.ptr27, align 1, !tbaa !11
  %12 = load i64, i64* %timestamp, align 8, !tbaa !16
  %shr34 = lshr i64 %12, 40
  %conv36 = trunc i64 %shr34 to i8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %8, i64 35
  store i8 %conv36, i8* %incdec.ptr32, align 1, !tbaa !11
  %13 = load i64, i64* %timestamp, align 8, !tbaa !16
  %shr39 = lshr i64 %13, 32
  %conv41 = trunc i64 %shr39 to i8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %8, i64 36
  store i8 %conv41, i8* %incdec.ptr37, align 1, !tbaa !11
  %14 = load i64, i64* %timestamp, align 8, !tbaa !16
  %shr44 = lshr i64 %14, 24
  %conv46 = trunc i64 %shr44 to i8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %8, i64 37
  store i8 %conv46, i8* %incdec.ptr42, align 1, !tbaa !11
  %15 = load i64, i64* %timestamp, align 8, !tbaa !16
  %shr49 = lshr i64 %15, 16
  %conv51 = trunc i64 %shr49 to i8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %8, i64 38
  store i8 %conv51, i8* %incdec.ptr47, align 1, !tbaa !11
  %16 = load i64, i64* %timestamp, align 8, !tbaa !16
  %shr54 = lshr i64 %16, 8
  %conv56 = trunc i64 %shr54 to i8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %8, i64 39
  store i8 %conv56, i8* %incdec.ptr52, align 1, !tbaa !11
  %17 = load i64, i64* %timestamp, align 8, !tbaa !16
  %conv60 = trunc i64 %17 to i8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %8, i64 40
  store i8 %conv60, i8* %incdec.ptr57, align 1, !tbaa !11
  %ext_len62 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 7
  %18 = load i64, i64* %ext_len62, align 8, !tbaa !18
  %shr63 = lshr i64 %18, 8
  %conv65 = trunc i64 %shr63 to i8
  store i8 %conv65, i8* %incdec.ptr61, align 1, !tbaa !11
  %19 = load i64, i64* %ext_len62, align 8, !tbaa !18
  %conv68 = trunc i64 %19 to i8
  %arrayidx69 = getelementptr inbounds i8, i8* %8, i64 41
  store i8 %conv68, i8* %arrayidx69, align 1, !tbaa !11
  %add.ptr70 = getelementptr inbounds i8, i8* %8, i64 42
  store i8* %add.ptr70, i8** %p, align 8, !tbaa !10
  %20 = load i64, i64* %ext_len62, align 8, !tbaa !18
  %cmp72.not = icmp eq i64 %20, 0
  br i1 %cmp72.not, label %if.end79, label %if.then74

if.then74:                                        ; preds = %if.then21
  %ext = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 6
  %21 = load i8*, i8** %ext, align 8, !tbaa !17
  %call76 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr70, i8* noundef %21, i64 noundef %20) #5
  %22 = load i64, i64* %ext_len62, align 8, !tbaa !18
  %add.ptr78 = getelementptr inbounds i8, i8* %add.ptr70, i64 %22
  store i8* %add.ptr78, i8** %p, align 8, !tbaa !10
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.then21
  %call80 = call i32 @i2o_SCT_signature(%struct.sct_st* noundef nonnull %sct, i8** noundef nonnull %p) #7
  %cmp81 = icmp slt i32 %call80, 1
  br i1 %cmp81, label %err, label %if.end88

if.else85:                                        ; preds = %if.end17
  %sct86 = getelementptr inbounds %struct.sct_st, %struct.sct_st* %sct, i64 0, i32 1
  %23 = load i8*, i8** %sct86, align 8, !tbaa !19
  %call87 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %23, i64 noundef %len.0) #5
  br label %if.end88

if.end88:                                         ; preds = %if.end79, %if.else85
  %conv89 = trunc i64 %len.0 to i32
  br label %cleanup

err.sink.split:                                   ; preds = %if.else11, %entry
  %.sink127 = phi i32 [ 206, %entry ], [ 229, %if.else11 ]
  %.sink = phi i32 [ 106, %entry ], [ 786688, %if.else11 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink127, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.i2o_SCT, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef %.sink, i8* noundef null) #5
  br label %err

err:                                              ; preds = %err.sink.split, %if.end79
  %pstart.1 = phi i8* [ %pstart.0, %if.end79 ], [ null, %err.sink.split ]
  call void @CRYPTO_free(i8* noundef %pstart.1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 253) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end88, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ -1, %err ], [ %conv89, %if.end88 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @SCT_is_complete(%struct.sct_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_SCT* @o2i_SCT_LIST(%struct.stack_st_SCT** noundef %a, i8** nocapture noundef %pp, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = add i64 %len, -65536
  %1 = icmp ult i64 %0, -65534
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.o2i_SCT_LIST, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 105, i8* noundef null) #5
  br label %cleanup74

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %pp, align 8, !tbaa !10
  %3 = load i8, i8* %2, align 1, !tbaa !11
  %conv = zext i8 %3 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %4 = load i8, i8* %arrayidx2, align 1, !tbaa !11
  %conv3 = zext i8 %4 to i64
  %or = or i64 %shl, %conv3
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 2
  store i8* %add.ptr, i8** %pp, align 8, !tbaa !10
  %sub = add nsw i64 %len, -2
  %cmp5.not = icmp eq i64 %or, %sub
  br i1 %cmp5.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.o2i_SCT_LIST, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 105, i8* noundef null) #5
  br label %cleanup74

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp eq %struct.stack_st_SCT** %a, null
  br i1 %cmp9, label %if.then14, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end8
  %5 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %a, align 8, !tbaa !10
  %cmp12 = icmp eq %struct.stack_st_SCT* %5, null
  br i1 %cmp12, label %if.then14, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false11
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_SCT_sk_type(%struct.stack_st_SCT* noundef nonnull %5) #7
  %call20116 = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call19) #5
  %cmp21.not117 = icmp eq i8* %call20116, null
  br i1 %cmp21.not117, label %if.end23, label %while.body

if.then14:                                        ; preds = %lor.lhs.false11, %if.end8
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %6 = bitcast %struct.stack_st* %call to %struct.stack_st_SCT*
  %cmp15 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp15, label %cleanup74, label %if.end23

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call20118 = phi i8* [ %call20, %while.body ], [ %call20116, %while.cond.preheader ]
  %7 = bitcast i8* %call20118 to %struct.sct_st*
  tail call void @SCT_free(%struct.sct_st* noundef nonnull %7) #5
  %call20 = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call19) #5
  %cmp21.not = icmp eq i8* %call20, null
  br i1 %cmp21.not, label %if.end23, label %while.body, !llvm.loop !23

if.end23:                                         ; preds = %while.body, %while.cond.preheader, %if.then14
  %sk.0 = phi %struct.stack_st_SCT* [ %6, %if.then14 ], [ %5, %while.cond.preheader ], [ %5, %while.body ]
  br label %while.cond24

while.cond24:                                     ; preds = %if.end54, %if.end23
  %list_len.0 = phi i64 [ %or, %if.end23 ], [ %sub49, %if.end54 ]
  switch i64 %list_len.0, label %if.end32 [
    i64 0, label %while.end60
    i64 1, label %if.then31
  ]

if.then31:                                        ; preds = %while.cond24
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.o2i_SCT_LIST, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 105, i8* noundef null) #5
  br label %err

if.end32:                                         ; preds = %while.cond24
  %8 = load i8*, i8** %pp, align 8, !tbaa !10
  %9 = load i8, i8* %8, align 1, !tbaa !11
  %conv34 = zext i8 %9 to i64
  %shl35 = shl nuw nsw i64 %conv34, 8
  %arrayidx36 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %arrayidx36, align 1, !tbaa !11
  %conv37 = zext i8 %10 to i64
  %or38 = or i64 %shl35, %conv37
  %add.ptr40 = getelementptr inbounds i8, i8* %8, i64 2
  store i8* %add.ptr40, i8** %pp, align 8, !tbaa !10
  %sub41 = add i64 %list_len.0, -2
  %cmp42 = icmp eq i64 %or38, 0
  %cmp45 = icmp ult i64 %sub41, %or38
  %or.cond = select i1 %cmp42, i1 true, i1 %cmp45
  br i1 %or.cond, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end32
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.o2i_SCT_LIST, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 105, i8* noundef null) #5
  br label %err

if.end48:                                         ; preds = %if.end32
  %call50 = tail call %struct.sct_st* @o2i_SCT(%struct.sct_st** noundef null, i8** noundef nonnull %pp, i64 noundef %or38) #7
  %cmp51 = icmp eq %struct.sct_st* %call50, null
  br i1 %cmp51, label %err, label %if.end54

if.end54:                                         ; preds = %if.end48
  %sub49 = sub i64 %sub41, %or38
  %call55 = tail call fastcc %struct.stack_st* @ossl_check_SCT_sk_type(%struct.stack_st_SCT* noundef %sk.0) #7
  %11 = bitcast %struct.sct_st* %call50 to i8*
  %call57 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call55, i8* noundef nonnull %11) #5
  %tobool.not = icmp eq i32 %call57, 0
  br i1 %tobool.not, label %if.then58, label %while.cond24

if.then58:                                        ; preds = %if.end54
  tail call void @SCT_free(%struct.sct_st* noundef nonnull %call50) #5
  br label %err

while.end60:                                      ; preds = %while.cond24
  br i1 %cmp9, label %cleanup74, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end60
  %12 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %a, align 8, !tbaa !10
  %cmp63 = icmp eq %struct.stack_st_SCT* %12, null
  br i1 %cmp63, label %if.then65, label %cleanup74

if.then65:                                        ; preds = %land.lhs.true
  store %struct.stack_st_SCT* %sk.0, %struct.stack_st_SCT** %a, align 8, !tbaa !10
  br label %cleanup74

err:                                              ; preds = %if.end48, %if.then31, %if.then47, %if.then58
  br i1 %cmp9, label %if.then72, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %err
  %13 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %a, align 8, !tbaa !10
  %cmp70 = icmp eq %struct.stack_st_SCT* %13, null
  br i1 %cmp70, label %if.then72, label %cleanup74

if.then72:                                        ; preds = %lor.lhs.false69, %err
  tail call void @SCT_LIST_free(%struct.stack_st_SCT* noundef %sk.0) #5
  br label %cleanup74

cleanup74:                                        ; preds = %lor.lhs.false69, %if.then72, %while.end60, %land.lhs.true, %if.then65, %if.then14, %if.then7, %if.then
  %retval.0 = phi %struct.stack_st_SCT* [ null, %if.then ], [ null, %if.then7 ], [ null, %if.then14 ], [ %sk.0, %if.then65 ], [ %sk.0, %land.lhs.true ], [ %sk.0, %while.end60 ], [ null, %if.then72 ], [ null, %lor.lhs.false69 ]
  ret %struct.stack_st_SCT* %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SCT_sk_type(%struct.stack_st_SCT* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SCT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @SCT_LIST_free(%struct.stack_st_SCT* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2o_SCT_LIST(%struct.stack_st_SCT* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* null, i8** %p, align 8, !tbaa !10
  %cmp.not = icmp eq i8** %pp, null
  br i1 %cmp.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %pp, align 8, !tbaa !10
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  %call = tail call i32 @i2o_SCT_LIST(%struct.stack_st_SCT* noundef %a, i8** noundef null) #7
  %cmp3 = icmp eq i32 %call, -1
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.i2o_SCT_LIST, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 105, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %if.then2
  %conv = sext i32 %call to i64
  %call5 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 333) #5
  store i8* %call5, i8** %pp, align 8, !tbaa !10
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.i2o_SCT_LIST, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end, %if.then
  %2 = phi i8* [ %1, %if.then ], [ %call5, %if.end ]
  %is_pp_new.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !10
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  %is_pp_new.1 = phi i32 [ %is_pp_new.0, %if.end10 ], [ 0, %entry ]
  %call12 = call fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef %a) #7
  %call13105 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call12) #5
  %cmp14106 = icmp sgt i32 %call13105, 0
  br i1 %cmp14106, label %for.body, label %if.end45

for.body:                                         ; preds = %if.end11, %if.end39
  %len2.0109 = phi i64 [ %add41, %if.end39 ], [ 2, %if.end11 ]
  %i.0107 = phi i32 [ %inc, %if.end39 ], [ 0, %if.end11 ]
  br i1 %cmp.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %for.body
  %3 = load i8*, i8** %p, align 8, !tbaa !10
  %add.ptr19 = getelementptr inbounds i8, i8* %3, i64 2
  store i8* %add.ptr19, i8** %p, align 8, !tbaa !10
  %call21 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call12, i32 noundef %i.0107) #5
  %4 = bitcast i8* %call21 to %struct.sct_st*
  %call22 = call i32 @i2o_SCT(%struct.sct_st* noundef %4, i8** noundef nonnull %p) #7
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %err, label %if.end26

if.end26:                                         ; preds = %if.then18
  %5 = lshr i32 %call22, 8
  %conv27 = trunc i32 %5 to i8
  store i8 %conv27, i8* %3, align 1, !tbaa !11
  %conv29 = trunc i32 %call22 to i8
  %arrayidx30 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %conv29, i8* %arrayidx30, align 1, !tbaa !11
  br label %if.end39

if.else:                                          ; preds = %for.body
  %call33 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call12, i32 noundef %i.0107) #5
  %6 = bitcast i8* %call33 to %struct.sct_st*
  %call34 = call i32 @i2o_SCT(%struct.sct_st* noundef %6, i8** noundef null) #7
  %cmp35 = icmp eq i32 %call34, -1
  br i1 %cmp35, label %err, label %if.end39

if.end39:                                         ; preds = %if.else, %if.end26
  %sct_len.0 = phi i32 [ %call22, %if.end26 ], [ %call34, %if.else ]
  %add = add nsw i32 %sct_len.0, 2
  %conv40 = sext i32 %add to i64
  %add41 = add i64 %len2.0109, %conv40
  %inc = add nuw nsw i32 %i.0107, 1
  %call13 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call12) #5
  %cmp14 = icmp slt i32 %inc, %call13
  br i1 %cmp14, label %for.body, label %for.end, !llvm.loop !25

for.end:                                          ; preds = %if.end39
  %cmp42 = icmp ugt i64 %add41, 65535
  br i1 %cmp42, label %err, label %if.end45

if.end45:                                         ; preds = %if.end11, %for.end
  %len2.0.lcssa112 = phi i64 [ %add41, %for.end ], [ 2, %if.end11 ]
  br i1 %cmp.not, label %if.end61, label %if.then48

if.then48:                                        ; preds = %if.end45
  %7 = load i8*, i8** %pp, align 8, !tbaa !10
  store i8* %7, i8** %p, align 8, !tbaa !10
  %sub = add nsw i64 %len2.0.lcssa112, -2
  %shr49 = lshr i64 %sub, 8
  %conv51 = trunc i64 %shr49 to i8
  store i8 %conv51, i8* %7, align 1, !tbaa !11
  %conv55 = trunc i64 %sub to i8
  %8 = load i8*, i8** %p, align 8, !tbaa !10
  %arrayidx56 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 %conv55, i8* %arrayidx56, align 1, !tbaa !11
  %9 = load i8*, i8** %p, align 8, !tbaa !10
  %add.ptr57 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr57, i8** %p, align 8, !tbaa !10
  %tobool.not = icmp eq i32 %is_pp_new.1, 0
  br i1 %tobool.not, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.then48
  %10 = load i8*, i8** %pp, align 8, !tbaa !10
  %add.ptr59 = getelementptr inbounds i8, i8* %10, i64 %len2.0.lcssa112
  store i8* %add.ptr59, i8** %pp, align 8, !tbaa !10
  br label %if.end61

if.end61:                                         ; preds = %if.then48, %if.then58, %if.end45
  %conv62 = trunc i64 %len2.0.lcssa112 to i32
  br label %cleanup

err:                                              ; preds = %if.else, %if.then18, %for.end
  %tobool63.not = icmp eq i32 %is_pp_new.1, 0
  br i1 %tobool63.not, label %cleanup, label %if.then64

if.then64:                                        ; preds = %err
  %11 = load i8*, i8** %pp, align 8, !tbaa !10
  call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 370) #5
  store i8* null, i8** %pp, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then64, %if.end61, %if.then8, %if.then4
  %retval.0 = phi i32 [ -1, %if.then4 ], [ -1, %if.then8 ], [ %conv62, %if.end61 ], [ -1, %if.then64 ], [ -1, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SCT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_SCT* @d2i_SCT_LIST(%struct.stack_st_SCT** noundef %a, i8** nocapture noundef %pp, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %oct = alloca %struct.asn1_string_st*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.asn1_string_st** %oct to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %oct, align 8, !tbaa !10
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = load i8*, i8** %pp, align 8, !tbaa !10
  store i8* %2, i8** %p, align 8, !tbaa !10
  %call = call %struct.asn1_string_st* @d2i_ASN1_OCTET_STRING(%struct.asn1_string_st** noundef nonnull %oct, i8** noundef nonnull %p, i64 noundef %len) #5
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %oct, align 8, !tbaa !10
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !26
  store i8* %4, i8** %p, align 8, !tbaa !10
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 0
  %5 = load i32, i32* %length, align 8, !tbaa !29
  %conv = sext i32 %5 to i64
  %call1 = call %struct.stack_st_SCT* @o2i_SCT_LIST(%struct.stack_st_SCT** noundef %a, i8** noundef nonnull %p, i64 noundef %conv) #7
  %cmp2.not = icmp eq %struct.stack_st_SCT* %call1, null
  br i1 %cmp2.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = load i8*, i8** %pp, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %len
  store i8* %add.ptr, i8** %pp, align 8, !tbaa !10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %oct, align 8, !tbaa !10
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5
  %retval.0 = phi %struct.stack_st_SCT* [ %call1, %if.end5 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.stack_st_SCT* %retval.0
}

declare %struct.asn1_string_st* @d2i_ASN1_OCTET_STRING(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_SCT_LIST(%struct.stack_st_SCT* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %oct = alloca %struct.asn1_string_st, align 8
  %0 = bitcast %struct.asn1_string_st* %oct to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 2
  store i8* null, i8** %data, align 8, !tbaa !26
  %call = call i32 @i2o_SCT_LIST(%struct.stack_st_SCT* noundef %a, i8** noundef nonnull %data) #7
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 0
  store i32 %call, i32* %length, align 8, !tbaa !29
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @i2d_ASN1_OCTET_STRING(%struct.asn1_string_st* noundef nonnull %oct, i8** noundef %out) #5
  %1 = load i8*, i8** %data, align 8, !tbaa !26
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 405) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @i2d_ASN1_OCTET_STRING(%struct.asn1_string_st* noundef, i8** noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"sct_st", !6, i64 0, !8, i64 8, !9, i64 16, !8, i64 24, !9, i64 32, !9, i64 40, !8, i64 48, !9, i64 56, !6, i64 64, !6, i64 65, !8, i64 72, !9, i64 80, !6, i64 88, !6, i64 92, !6, i64 96}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!8, !8, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!5, !6, i64 64}
!13 = !{!5, !6, i64 65}
!14 = !{!5, !8, i64 24}
!15 = !{!5, !9, i64 32}
!16 = !{!5, !9, i64 40}
!17 = !{!5, !8, i64 48}
!18 = !{!5, !9, i64 56}
!19 = !{!5, !8, i64 8}
!20 = !{!5, !9, i64 16}
!21 = !{!5, !9, i64 80}
!22 = !{!5, !8, i64 72}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = !{!27, !8, i64 8}
!27 = !{!"asn1_string_st", !28, i64 0, !28, i64 4, !8, i64 8, !9, i64 16}
!28 = !{!"int", !6, i64 0}
!29 = !{!27, !28, i64 0}
