; ModuleID = 'crypto/params_from_text.c'
source_filename = "crypto/params_from_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [26 x i8] c"crypto/params_from_text.c\00", align 1
@__func__.OSSL_PARAM_allocate_from_text = private unnamed_addr constant [30 x i8] c"OSSL_PARAM_allocate_from_text\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@__func__.prepare_from_text = private unnamed_addr constant [18 x i8] c"prepare_from_text\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PARAM_allocate_from_text(%struct.ossl_param_st* noundef writeonly %to, %struct.ossl_param_st* noundef %paramdefs, i8* noundef %key, i8* noundef %value, i64 noundef %value_n, i32* noundef %found) local_unnamed_addr #0 {
entry:
  %paramdef = alloca %struct.ossl_param_st*, align 8
  %ishex = alloca i32, align 4
  %buf_n = alloca i64, align 8
  %tmpbn = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.ossl_param_st** %paramdef to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.ossl_param_st* null, %struct.ossl_param_st** %paramdef, align 8, !tbaa !4
  %1 = bitcast i32* %ishex to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  store i32 0, i32* %ishex, align 4, !tbaa !8
  %2 = bitcast i64* %buf_n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store i64 0, i64* %buf_n, align 8, !tbaa !10
  %3 = bitcast %struct.bignum_st** %tmpbn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store %struct.bignum_st* null, %struct.bignum_st** %tmpbn, align 8, !tbaa !4
  %cmp = icmp eq %struct.ossl_param_st* %to, null
  %cmp1 = icmp eq %struct.ossl_param_st* %paramdefs, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @prepare_from_text(%struct.ossl_param_st* noundef nonnull %paramdefs, i8* noundef %key, i8* noundef %value, i64 noundef %value_n, %struct.ossl_param_st** noundef nonnull %paramdef, i32* noundef nonnull %ishex, i64* noundef nonnull %buf_n, %struct.bignum_st** noundef nonnull %tmpbn, i32* noundef %found) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %buf_n, align 8, !tbaa !10
  %cmp4.not = icmp eq i64 %4, 0
  %cond = select i1 %cmp4.not, i64 1, i64 %4
  %call5 = call i8* @CRYPTO_zalloc(i64 noundef %cond, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 198) #8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_PARAM_allocate_from_text, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end8:                                          ; preds = %if.end3
  %5 = load %struct.ossl_param_st*, %struct.ossl_param_st** %paramdef, align 8, !tbaa !4
  %6 = load i32, i32* %ishex, align 4, !tbaa !8
  %7 = load %struct.bignum_st*, %struct.bignum_st** %tmpbn, align 8, !tbaa !4
  %call9 = call fastcc i32 @construct_from_text(%struct.ossl_param_st* noundef nonnull %to, %struct.ossl_param_st* noundef %5, i8* noundef %value, i32 noundef %6, i8* noundef nonnull %call5, i64 noundef %4, %struct.bignum_st* noundef %7) #7
  %8 = load %struct.bignum_st*, %struct.bignum_st** %tmpbn, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %8) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @CRYPTO_free(i8* noundef nonnull %call5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 207) #8
  br label %cleanup

err:                                              ; preds = %if.end, %if.then7
  %9 = load %struct.bignum_st*, %struct.bignum_st** %tmpbn, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then11, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 0, %if.then11 ], [ %call9, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @prepare_from_text(%struct.ossl_param_st* noundef %paramdefs, i8* noundef %key, i8* noundef %value, i64 noundef %value_n, %struct.ossl_param_st** nocapture noundef writeonly %paramdef, i32* nocapture noundef %ishex, i64* nocapture noundef writeonly %buf_n, %struct.bignum_st** noundef %tmpbn, i32* noundef writeonly %found) unnamed_addr #0 {
entry:
  %call = tail call i32 @strncmp(i8* noundef %key, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef 3) #9
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %ishex, align 4, !tbaa !8
  %spec.select.idx = select i1 %cmp, i64 3, i64 0
  %spec.select = getelementptr i8, i8* %key, i64 %spec.select.idx
  %call1 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %paramdefs, i8* noundef %spec.select) #8
  store %struct.ossl_param_st* %call1, %struct.ossl_param_st** %paramdef, align 8, !tbaa !4
  %cmp2.not = icmp eq i32* %found, null
  br i1 %cmp2.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %entry
  %cmp5 = icmp ne %struct.ossl_param_st* %call1, null
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %found, align 4, !tbaa !8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %entry
  %cmp8 = icmp eq %struct.ossl_param_st* %call1, null
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end7
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call1, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !12
  switch i32 %0, label %cleanup [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb54
    i32 5, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end11, %if.end11
  %1 = load i32, i32* %ishex, align 4, !tbaa !8
  %tobool12.not = icmp eq i32 %1, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %sw.bb
  %call14 = tail call i32 @BN_hex2bn(%struct.bignum_st** noundef %tmpbn, i8* noundef %value) #8
  br label %if.end16

if.else:                                          ; preds = %sw.bb
  %call15 = tail call i32 @BN_asc2bn(%struct.bignum_st** noundef %tmpbn, i8* noundef %value) #8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %r.0 = phi i32 [ %call14, %if.then13 ], [ %call15, %if.else ]
  %cmp17 = icmp eq i32 %r.0, 0
  br i1 %cmp17, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %2 = load %struct.bignum_st*, %struct.bignum_st** %tmpbn, align 8, !tbaa !4
  %cmp19 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp19, label %cleanup, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false
  %3 = load i32, i32* %data_type, align 8, !tbaa !12
  %cmp24 = icmp eq i32 %3, 1
  br i1 %cmp24, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %if.end22
  %call26 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %2) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end32, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true
  %4 = load %struct.bignum_st*, %struct.bignum_st** %tmpbn, align 8, !tbaa !4
  %call29 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %4, i64 noundef 1) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %if.end32

if.end32:                                         ; preds = %land.lhs.true28, %land.lhs.true, %if.end22
  %5 = load %struct.bignum_st*, %struct.bignum_st** %tmpbn, align 8, !tbaa !4
  %call33 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %5) #8
  %conv34 = sext i32 %call33 to i64
  %add = add nsw i64 %conv34, 7
  %div = lshr i64 %add, 3
  store i64 %div, i64* %buf_n, align 8, !tbaa !10
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call1, i64 0, i32 3
  %6 = load i64, i64* %data_size, align 8, !tbaa !14
  %cmp35.not = icmp eq i64 %6, 0
  br i1 %cmp35.not, label %cleanup, label %if.then37

if.then37:                                        ; preds = %if.end32
  %mul = shl i64 %6, 3
  %cmp39 = icmp ult i64 %mul, %conv34
  br i1 %cmp39, label %if.then50, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.then37
  %7 = load i32, i32* %data_type, align 8, !tbaa !12
  %cmp43 = icmp eq i32 %7, 1
  %cmp48 = icmp eq i64 %mul, %conv34
  %or.cond = select i1 %cmp43, i1 %cmp48, i1 false
  br i1 %or.cond, label %if.then50, label %if.end51

if.then50:                                        ; preds = %lor.lhs.false41, %if.then37
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.prepare_from_text, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 116, i8* noundef null) #8
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false41
  store i64 %6, i64* %buf_n, align 8, !tbaa !10
  br label %cleanup

sw.bb54:                                          ; preds = %if.end11
  %8 = load i32, i32* %ishex, align 4, !tbaa !8
  %tobool55.not = icmp eq i32 %8, 0
  br i1 %tobool55.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %sw.bb54
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.prepare_from_text, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, i8* noundef null) #8
  br label %cleanup

if.end57:                                         ; preds = %sw.bb54
  %call58 = tail call i64 @strlen(i8* noundef %value) #9
  %add59 = add i64 %call58, 1
  store i64 %add59, i64* %buf_n, align 8, !tbaa !10
  br label %cleanup

sw.bb60:                                          ; preds = %if.end11
  %9 = load i32, i32* %ishex, align 4, !tbaa !8
  %tobool61.not = icmp eq i32 %9, 0
  br i1 %tobool61.not, label %if.else64, label %if.then62

if.then62:                                        ; preds = %sw.bb60
  %call63 = tail call i64 @strlen(i8* noundef %value) #9
  %shr = lshr i64 %call63, 1
  store i64 %shr, i64* %buf_n, align 8, !tbaa !10
  br label %cleanup

if.else64:                                        ; preds = %sw.bb60
  store i64 %value_n, i64* %buf_n, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end11, %if.end51, %if.end32, %if.else64, %if.then62, %land.lhs.true28, %if.end16, %lor.lhs.false, %if.end7, %if.then56, %if.then50
  %retval.0 = phi i32 [ 0, %if.then56 ], [ 0, %if.then50 ], [ 0, %if.end7 ], [ 0, %lor.lhs.false ], [ 0, %if.end16 ], [ 0, %land.lhs.true28 ], [ 1, %if.then62 ], [ 1, %if.else64 ], [ 1, %if.end32 ], [ 1, %if.end51 ], [ 1, %if.end11 ], [ 1, %if.end57 ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @construct_from_text(%struct.ossl_param_st* nocapture noundef writeonly %to, %struct.ossl_param_st* nocapture noundef readonly %paramdef, i8* noundef %value, i32 noundef %ishex, i8* noundef %buf, i64 noundef %buf_n, %struct.bignum_st* noundef %tmpbn) unnamed_addr #0 {
entry:
  %l = alloca i64, align 8
  %cmp = icmp eq i8* %buf, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i64 %buf_n, 0
  br i1 %cmp1.not, label %if.end25, label %if.then2

if.then2:                                         ; preds = %if.end
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %paramdef, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !12
  switch i32 %0, label %if.end25 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb13
    i32 5, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.then2, %if.then2
  %conv = trunc i64 %buf_n to i32
  %call = tail call i32 @BN_bn2nativepad(%struct.bignum_st* noundef %tmpbn, i8* noundef nonnull %buf, i32 noundef %conv) #8
  %1 = load i32, i32* %data_type, align 8, !tbaa !12
  %cmp4 = icmp eq i32 %1, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %sw.bb
  %call6 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %tmpbn) #8
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end25, label %iter.check

iter.check:                                       ; preds = %land.lhs.true
  %min.iters.check = icmp ult i64 %buf_n, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4 = icmp ult i64 %buf_n, 32
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %buf_n, -32
  %2 = add i64 %n.vec, -32
  %3 = lshr exact i64 %2, 5
  %4 = add nuw nsw i64 %3, 1
  %xtraiter = and i64 %4, 1
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %4, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %next.gep = getelementptr i8, i8* %buf, i64 %index
  %6 = bitcast i8* %next.gep to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %6, align 1, !tbaa !15
  %7 = getelementptr i8, i8* %next.gep, i64 16
  %8 = bitcast i8* %7 to <16 x i8>*
  %wide.load6 = load <16 x i8>, <16 x i8>* %8, align 1, !tbaa !15
  %9 = xor <16 x i8> %wide.load, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %10 = xor <16 x i8> %wide.load6, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %11 = bitcast i8* %next.gep to <16 x i8>*
  store <16 x i8> %9, <16 x i8>* %11, align 1, !tbaa !15
  %12 = bitcast i8* %7 to <16 x i8>*
  store <16 x i8> %10, <16 x i8>* %12, align 1, !tbaa !15
  %index.next = or i64 %index, 32
  %next.gep.1 = getelementptr i8, i8* %buf, i64 %index.next
  %13 = bitcast i8* %next.gep.1 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %13, align 1, !tbaa !15
  %14 = getelementptr i8, i8* %next.gep.1, i64 16
  %15 = bitcast i8* %14 to <16 x i8>*
  %wide.load6.1 = load <16 x i8>, <16 x i8>* %15, align 1, !tbaa !15
  %16 = xor <16 x i8> %wide.load.1, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %17 = xor <16 x i8> %wide.load6.1, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %18 = bitcast i8* %next.gep.1 to <16 x i8>*
  store <16 x i8> %16, <16 x i8>* %18, align 1, !tbaa !15
  %19 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> %17, <16 x i8>* %19, align 1, !tbaa !15
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !16

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %next.gep.epil = getelementptr i8, i8* %buf, i64 %index.unr
  %20 = bitcast i8* %next.gep.epil to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %20, align 1, !tbaa !15
  %21 = getelementptr i8, i8* %next.gep.epil, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  %wide.load6.epil = load <16 x i8>, <16 x i8>* %22, align 1, !tbaa !15
  %23 = xor <16 x i8> %wide.load.epil, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %24 = xor <16 x i8> %wide.load6.epil, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %25 = bitcast i8* %next.gep.epil to <16 x i8>*
  store <16 x i8> %23, <16 x i8>* %25, align 1, !tbaa !15
  %26 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> %24, <16 x i8>* %26, align 1, !tbaa !15
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %buf_n
  br i1 %cmp.n, label %if.end25, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end12 = getelementptr i8, i8* %buf, i64 %n.vec
  %ind.end9 = and i64 %buf_n, 31
  %n.vec.remaining = and i64 %buf_n, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %buf_n, -8
  %ind.end = and i64 %buf_n, 7
  %ind.end11 = getelementptr i8, i8* %buf, i64 %n.vec8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ]
  %next.gep16 = getelementptr i8, i8* %buf, i64 %index14
  %27 = bitcast i8* %next.gep16 to <8 x i8>*
  %wide.load17 = load <8 x i8>, <8 x i8>* %27, align 1, !tbaa !15
  %28 = xor <8 x i8> %wide.load17, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %29 = bitcast i8* %next.gep16 to <8 x i8>*
  store <8 x i8> %28, <8 x i8>* %29, align 1, !tbaa !15
  %index.next18 = add nuw i64 %index14, 8
  %30 = icmp eq i64 %index.next18, %n.vec8
  br i1 %30, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %n.vec8, %buf_n
  br i1 %cmp.n13, label %if.end25, label %for.body.preheader

for.body.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %i.03.ph = phi i64 [ %buf_n, %iter.check ], [ %ind.end9, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  %cp.02.ph = phi i8* [ %buf, %iter.check ], [ %ind.end12, %vec.epilog.iter.check ], [ %ind.end11, %vec.epilog.middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.03 = phi i64 [ %dec, %for.body ], [ %i.03.ph, %for.body.preheader ]
  %cp.02 = phi i8* [ %incdec.ptr, %for.body ], [ %cp.02.ph, %for.body.preheader ]
  %dec = add i64 %i.03, -1
  %31 = load i8, i8* %cp.02, align 1, !tbaa !15
  %32 = xor i8 %31, -1
  store i8 %32, i8* %cp.02, align 1, !tbaa !15
  %incdec.ptr = getelementptr inbounds i8, i8* %cp.02, i64 1
  %cmp8.not = icmp eq i64 %dec, 0
  br i1 %cmp8.not, label %if.end25, label %for.body, !llvm.loop !21

sw.bb13:                                          ; preds = %if.then2
  %call14 = tail call i8* @strncpy(i8* noundef nonnull %buf, i8* noundef %value, i64 noundef %buf_n) #8
  %dec15 = add i64 %buf_n, -1
  br label %if.end25

sw.bb16:                                          ; preds = %if.then2
  %tobool17.not = icmp eq i32 %ishex, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %sw.bb16
  %33 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #6
  store i64 0, i64* %l, align 8, !tbaa !10
  %call19 = call i32 @OPENSSL_hexstr2buf_ex(i8* noundef nonnull %buf, i64 noundef %buf_n, i64* noundef nonnull %l, i8* noundef %value, i8 noundef signext 58) #8
  %tobool20.not.not = icmp eq i32 %call19, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #6
  br i1 %tobool20.not.not, label %return, label %if.end25

if.else:                                          ; preds = %sw.bb16
  %call23 = tail call i8* @memcpy(i8* noundef nonnull %buf, i8* noundef %value, i64 noundef %buf_n) #8
  br label %if.end25

if.end25:                                         ; preds = %for.body, %middle.block, %vec.epilog.middle.block, %if.then18, %sw.bb13, %if.then2, %land.lhs.true, %sw.bb, %if.else, %if.end
  %buf_n.addr.0 = phi i64 [ %buf_n, %if.then2 ], [ %buf_n, %if.then18 ], [ %buf_n, %if.else ], [ %dec15, %sw.bb13 ], [ %buf_n, %land.lhs.true ], [ %buf_n, %sw.bb ], [ 0, %if.end ], [ %buf_n, %vec.epilog.middle.block ], [ %buf_n, %middle.block ], [ %buf_n, %for.body ]
  %34 = bitcast %struct.ossl_param_st* %to to i8*
  %35 = bitcast %struct.ossl_param_st* %paramdef to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %34, i8* noundef nonnull align 8 dereferenceable(40) %35, i64 16, i1 false), !tbaa.struct !22
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %to, i64 0, i32 2
  store i8* %buf, i8** %data, align 8, !tbaa !23
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %to, i64 0, i32 3
  store i64 %buf_n.addr.0, i64* %data_size, align 8, !tbaa !14
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %to, i64 0, i32 4
  store i64 -1, i64* %return_size, align 8, !tbaa !24
  br label %return

return:                                           ; preds = %if.then18, %entry, %if.end25
  %retval.1 = phi i32 [ 1, %if.end25 ], [ 0, %if.then18 ], [ 0, %entry ]
  ret i32 %retval.1
}

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BN_asc2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i32 @BN_bn2nativepad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @OPENSSL_hexstr2buf_ex(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !9, i64 8}
!13 = !{!"ossl_param_st", !5, i64 0, !9, i64 8, !5, i64 16, !11, i64 24, !11, i64 32}
!14 = !{!13, !11, i64 24}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = distinct !{!19, !17, !18, !20}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !17, !20, !18}
!22 = !{i64 0, i64 8, !4, i64 8, i64 4, !8, i64 16, i64 8, !4, i64 24, i64 8, !10, i64 32, i64 8, !10}
!23 = !{!13, !5, i64 16}
!24 = !{!13, !11, i64 32}
