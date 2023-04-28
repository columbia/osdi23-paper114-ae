; ModuleID = 'fuzz/fuzz_rand.c'
source_filename = "fuzz/fuzz_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_provider_st = type opaque
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_core_handle_st = type opaque

@.str = private unnamed_addr constant [10 x i8] c"fuzz-rand\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fuzz\00", align 1
@r_prov = internal unnamed_addr global %struct.ossl_provider_st* null, align 8
@fuzz_rand_method = internal constant [3 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1024, void ()* bitcast (void (%struct.ossl_lib_ctx_st*)* @OSSL_LIB_CTX_free to void ()*) }, %struct.ossl_dispatch_st { i32 1027, void ()* bitcast (%struct.ossl_algorithm_st* (i8*, i32, i32*)* @fuzz_rand_query to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@fuzz_rand_rand = internal constant [2 x %struct.ossl_algorithm_st] [%struct.ossl_algorithm_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), %struct.ossl_dispatch_st* getelementptr inbounds ([9 x %struct.ossl_dispatch_st], [9 x %struct.ossl_dispatch_st]* @fuzz_rand_functions, i32 0, i32 0), i8* null }, %struct.ossl_algorithm_st zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [19 x i8] c"provider=fuzz-rand\00", align 1
@fuzz_rand_functions = internal constant [9 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1, void ()* bitcast (i8* (i8*, i8*, %struct.ossl_dispatch_st*)* @fuzz_rand_newctx to void ()*) }, %struct.ossl_dispatch_st { i32 2, void ()* bitcast (void (i8*)* @fuzz_rand_freectx to void ()*) }, %struct.ossl_dispatch_st { i32 3, void ()* bitcast (i32 (i8*, i32, i32, i8*, i64, %struct.ossl_param_st*)* @fuzz_rand_instantiate to void ()*) }, %struct.ossl_dispatch_st { i32 4, void ()* bitcast (i32 (i8*)* @fuzz_rand_uninstantiate to void ()*) }, %struct.ossl_dispatch_st { i32 5, void ()* bitcast (i32 (i8*, i8*, i64, i32, i32, i8*, i64)* @fuzz_rand_generate to void ()*) }, %struct.ossl_dispatch_st { i32 8, void ()* bitcast (i32 (i8*)* @fuzz_rand_enable_locking to void ()*) }, %struct.ossl_dispatch_st { i32 12, void ()* bitcast (%struct.ossl_param_st* (i8*, i8*)* @fuzz_rand_gettable_ctx_params to void ()*) }, %struct.ossl_dispatch_st { i32 15, void ()* bitcast (i32 (i8*, %struct.ossl_param_st*)* @fuzz_rand_get_ctx_params to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [17 x i8] c"fuzz/fuzz_rand.c\00", align 1
@fuzz_rand_gettable_ctx_params.known_gettable_ctx_params = internal constant [4 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 1, i8* null, i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 2, i8* null, i64 4, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 2, i8* null, i64 8, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"max_request\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FuzzerSetRand() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef nonnull @fuzz_rand_provider_init) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @RAND_set_DRBG_type(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i8* noundef null, i8* noundef null) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_try_load(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 1) #6
  store %struct.ossl_provider_st* %call4, %struct.ossl_provider_st** @r_prov, align 8, !tbaa !3
  %cmp = icmp eq %struct.ossl_provider_st* %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  ret void
}

declare dso_local i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @fuzz_rand_provider_init(%struct.ossl_core_handle_st* nocapture noundef readnone %handle, %struct.ossl_dispatch_st* nocapture noundef readnone %in, %struct.ossl_dispatch_st** nocapture noundef writeonly %out, i8** nocapture noundef writeonly %provctx) #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #6
  %0 = bitcast i8** %provctx to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %call, %struct.ossl_lib_ctx_st** %0, align 8, !tbaa !3
  store %struct.ossl_dispatch_st* getelementptr inbounds ([3 x %struct.ossl_dispatch_st], [3 x %struct.ossl_dispatch_st]* @fuzz_rand_method, i64 0, i64 0), %struct.ossl_dispatch_st** %out, align 8, !tbaa !3
  ret i32 1
}

declare dso_local i32 @RAND_set_DRBG_type(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_try_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @FuzzerClearRand() local_unnamed_addr #0 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @r_prov, align 8, !tbaa !3
  %call = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %0) #6
  ret void
}

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal %struct.ossl_algorithm_st* @fuzz_rand_query(i8* nocapture noundef readnone %provctx, i32 noundef %operation_id, i32* nocapture noundef writeonly %no_cache) #3 {
entry:
  store i32 0, i32* %no_cache, align 4, !tbaa !7
  %cond = icmp eq i32 %operation_id, 5
  %. = select i1 %cond, %struct.ossl_algorithm_st* getelementptr inbounds ([2 x %struct.ossl_algorithm_st], [2 x %struct.ossl_algorithm_st]* @fuzz_rand_rand, i64 0, i64 0), %struct.ossl_algorithm_st* null
  ret %struct.ossl_algorithm_st* %.
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @fuzz_rand_newctx(i8* nocapture noundef readnone %provctx, i8* nocapture noundef readnone %parent, %struct.ossl_dispatch_st* nocapture noundef readnone %parent_dispatch) #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 noundef 28) #6
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %call to i32*
  store i32 0, i32* %0, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @fuzz_rand_freectx(i8* noundef %vrng) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %vrng, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 noundef 37) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @fuzz_rand_instantiate(i8* nocapture noundef writeonly %vrng, i32 noundef %strength, i32 noundef %prediction_resistance, i8* nocapture noundef readnone %pstr, i64 noundef %pstr_len, %struct.ossl_param_st* nocapture noundef readnone %params) #3 {
entry:
  %0 = bitcast i8* %vrng to i32*
  store i32 1, i32* %0, align 4, !tbaa !7
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @fuzz_rand_uninstantiate(i8* nocapture noundef writeonly %vrng) #3 {
entry:
  %0 = bitcast i8* %vrng to i32*
  store i32 0, i32* %0, align 4, !tbaa !7
  ret i32 1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal i32 @fuzz_rand_generate(i8* nocapture noundef readnone %vdrbg, i8* nocapture noundef writeonly %out, i64 noundef %outlen, i32 noundef %strength, i32 noundef %prediction_resistance, i8* nocapture noundef readnone %adin, i64 noundef %adinlen) #4 {
entry:
  %cmp5.not = icmp eq i64 %outlen, 0
  br i1 %cmp5.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i64 %outlen, 32
  br i1 %min.iters.check, label %for.body.preheader10, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %outlen, -32
  %cast.crd = trunc i64 %n.vec to i8
  %ind.end = or i8 %cast.crd, 1
  %0 = add i64 %n.vec, -32
  %1 = lshr exact i64 %0, 5
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 3
  %3 = icmp ult i64 %0, 96
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %2, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %vec.ind = phi <16 x i8> [ <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, %vector.ph.new ], [ %vec.ind.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %step.add = add <16 x i8> %vec.ind, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %4 = getelementptr inbounds i8, i8* %out, i64 %index
  %5 = bitcast i8* %4 to <16 x i8>*
  store <16 x i8> %vec.ind, <16 x i8>* %5, align 1, !tbaa !9
  %6 = getelementptr inbounds i8, i8* %4, i64 16
  %7 = bitcast i8* %6 to <16 x i8>*
  store <16 x i8> %step.add, <16 x i8>* %7, align 1, !tbaa !9
  %index.next = or i64 %index, 32
  %vec.ind.next = add <16 x i8> %vec.ind, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %step.add.1 = add <16 x i8> %vec.ind, <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>
  %8 = getelementptr inbounds i8, i8* %out, i64 %index.next
  %9 = bitcast i8* %8 to <16 x i8>*
  store <16 x i8> %vec.ind.next, <16 x i8>* %9, align 1, !tbaa !9
  %10 = getelementptr inbounds i8, i8* %8, i64 16
  %11 = bitcast i8* %10 to <16 x i8>*
  store <16 x i8> %step.add.1, <16 x i8>* %11, align 1, !tbaa !9
  %index.next.1 = or i64 %index, 64
  %vec.ind.next.1 = add <16 x i8> %vec.ind, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %step.add.2 = add <16 x i8> %vec.ind, <i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80>
  %12 = getelementptr inbounds i8, i8* %out, i64 %index.next.1
  %13 = bitcast i8* %12 to <16 x i8>*
  store <16 x i8> %vec.ind.next.1, <16 x i8>* %13, align 1, !tbaa !9
  %14 = getelementptr inbounds i8, i8* %12, i64 16
  %15 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> %step.add.2, <16 x i8>* %15, align 1, !tbaa !9
  %index.next.2 = or i64 %index, 96
  %vec.ind.next.2 = add <16 x i8> %vec.ind, <i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96>
  %step.add.3 = add <16 x i8> %vec.ind, <i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112>
  %16 = getelementptr inbounds i8, i8* %out, i64 %index.next.2
  %17 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> %vec.ind.next.2, <16 x i8>* %17, align 1, !tbaa !9
  %18 = getelementptr inbounds i8, i8* %16, i64 16
  %19 = bitcast i8* %18 to <16 x i8>*
  store <16 x i8> %step.add.3, <16 x i8>* %19, align 1, !tbaa !9
  %index.next.3 = add nuw i64 %index, 128
  %vec.ind.next.3 = xor <16 x i8> %vec.ind, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !10

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind.unr = phi <16 x i8> [ <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, %vector.ph ], [ %vec.ind.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %vec.ind.epil = phi <16 x i8> [ %vec.ind.next.epil, %vector.body.epil ], [ %vec.ind.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %step.add.epil = add <16 x i8> %vec.ind.epil, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %20 = getelementptr inbounds i8, i8* %out, i64 %index.epil
  %21 = bitcast i8* %20 to <16 x i8>*
  store <16 x i8> %vec.ind.epil, <16 x i8>* %21, align 1, !tbaa !9
  %22 = getelementptr inbounds i8, i8* %20, i64 16
  %23 = bitcast i8* %22 to <16 x i8>*
  store <16 x i8> %step.add.epil, <16 x i8>* %23, align 1, !tbaa !9
  %index.next.epil = add nuw i64 %index.epil, 32
  %vec.ind.next.epil = add <16 x i8> %vec.ind.epil, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !13

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %outlen
  br i1 %cmp.n, label %for.end, label %for.body.preheader10

for.body.preheader10:                             ; preds = %for.body.preheader, %middle.block
  %i.07.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %val.06.ph = phi i8 [ 1, %for.body.preheader ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader10, %for.body
  %i.07 = phi i64 [ %inc1, %for.body ], [ %i.07.ph, %for.body.preheader10 ]
  %val.06 = phi i8 [ %inc, %for.body ], [ %val.06.ph, %for.body.preheader10 ]
  %inc = add i8 %val.06, 1
  %arrayidx = getelementptr inbounds i8, i8* %out, i64 %i.07
  store i8 %val.06, i8* %arrayidx, align 1, !tbaa !9
  %inc1 = add nuw i64 %i.07, 1
  %exitcond.not = icmp eq i64 %inc1, %outlen
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %for.body, %middle.block, %entry
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @fuzz_rand_enable_locking(i8* nocapture noundef readnone %vrng) #5 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ossl_param_st* @fuzz_rand_gettable_ctx_params(i8* nocapture noundef readnone %vrng, i8* nocapture noundef readnone %provctx) #5 {
entry:
  ret %struct.ossl_param_st* getelementptr inbounds ([4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* @fuzz_rand_gettable_ctx_params.known_gettable_ctx_params, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fuzz_rand_get_ctx_params(i8* nocapture noundef readonly %vrng, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %vrng to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !7
  %call1 = tail call i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef nonnull %call, i32 noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #6
  %cmp3.not = icmp eq %struct.ossl_param_st* %call2, null
  br i1 %cmp3.not, label %if.end8, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %call5 = tail call i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef nonnull %call2, i32 noundef 500) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  %call9 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)) #6
  %cmp10.not = icmp eq %struct.ossl_param_st* %call9, null
  br i1 %cmp10.not, label %if.end15, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end8
  %call12 = tail call i32 @OSSL_PARAM_set_size_t(%struct.ossl_param_st* noundef nonnull %call9, i64 noundef 2147483647) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true11, %if.end8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true11, %land.lhs.true4, %land.lhs.true, %if.end15
  %retval.0 = phi i32 [ 1, %if.end15 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true11 ]
  ret i32 %retval.0
}

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_set_size_t(%struct.ossl_param_st* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !11, !16, !12}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
