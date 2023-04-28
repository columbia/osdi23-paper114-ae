; ModuleID = 'test/upcallstest.c'
source_filename = "test/upcallstest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_core_handle_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"obj_create_test\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"test/upcallstest.c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"libctx\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"OSSL_PROVIDER_add_builtin(libctx, \22obj-prov\22, obj_provider_init)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"obj-prov\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"objprov = OSSL_PROVIDER_load(libctx, \22obj-prov\22)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"1.3.6.1.4.1.16604.998877.3\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sigalgnid\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"NID_undef\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"OBJ_find_sigid_algs(sigalgnid, &digestnid, &signid)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"digestnid\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"signid\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"OBJ_sn2nid(DIGEST_SN)\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"my-digest\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"OBJ_ln2nid(SIG_LN)\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"my-sig-long\00", align 1
@obj_dispatch_table = internal constant [2 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 1027, void ()* bitcast (%struct.ossl_algorithm_st* (i8*, i32, i32*)* @obj_query to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@c_obj_add_sigid = internal unnamed_addr global i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* null, align 8
@c_obj_create = internal unnamed_addr global i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* null, align 8
@.str.16 = private unnamed_addr constant [27 x i8] c"1.3.6.1.4.1.16604.998877.2\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"my-digest-long\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"1.3.6.1.4.1.16604.998877.1\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"my-sig\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"my-sigalg\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"my-sigalg-long\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @obj_create_test) #5
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @obj_create_test() #0 {
entry:
  %digestnid = alloca i32, align 4
  %signid = alloca i32, align 4
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #5
  %0 = bitcast i32* %digestnid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = bitcast i32* %signid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %2 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef nonnull @obj_provider_init) #5
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #5
  %3 = bitcast %struct.ossl_provider_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* noundef %3) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call i32 @OBJ_txt2nid(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #5
  %call11 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end9
  %call14 = call i32 @OBJ_find_sigid_algs(i32 noundef %call10, i32* noundef nonnull %digestnid, i32* noundef nonnull %signid) #5
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv16) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %4 = load i32, i32* %digestnid, align 4, !tbaa !3
  %call20 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 noundef %4, i32 noundef 0) #5
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %5 = load i32, i32* %signid, align 4, !tbaa !3
  %call23 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 noundef %5, i32 noundef 0) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %6 = load i32, i32* %digestnid, align 4, !tbaa !3
  %call26 = call i32 @OBJ_sn2nid(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #5
  %call27 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 noundef %6, i32 noundef %call26) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %7 = load i32, i32* %signid, align 4, !tbaa !3
  %call30 = call i32 @OBJ_ln2nid(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0)) #5
  %call31 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef %7, i32 noundef %call30) #5
  %tobool32.not = icmp ne i32 %call31, 0
  %spec.select = zext i1 %tobool32.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false29, %if.end9, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false22, %lor.lhs.false25, %if.end, %lor.lhs.false, %entry
  %objprov.0 = phi %struct.ossl_provider_st* [ %call5, %lor.lhs.false25 ], [ %call5, %lor.lhs.false22 ], [ %call5, %lor.lhs.false19 ], [ %call5, %lor.lhs.false13 ], [ %call5, %if.end9 ], [ %call5, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call5, %lor.lhs.false29 ]
  %testresult.0 = phi i32 [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false13 ], [ 0, %if.end9 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %lor.lhs.false29 ]
  %call35 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %objprov.0) #5
  call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %testresult.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @obj_provider_init(%struct.ossl_core_handle_st* noundef %handle, %struct.ossl_dispatch_st* nocapture noundef readonly %in, %struct.ossl_dispatch_st** nocapture noundef writeonly %out, i8** nocapture noundef writeonly %provctx) #0 {
entry:
  %0 = bitcast i8** %provctx to %struct.ossl_core_handle_st**
  store %struct.ossl_core_handle_st* %handle, %struct.ossl_core_handle_st** %0, align 8, !tbaa !7
  store %struct.ossl_dispatch_st* getelementptr inbounds ([2 x %struct.ossl_dispatch_st], [2 x %struct.ossl_dispatch_st]* @obj_dispatch_table, i64 0, i64 0), %struct.ossl_dispatch_st** %out, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %in.addr.0 = phi %struct.ossl_dispatch_st* [ %in, %entry ], [ %incdec.ptr, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %in.addr.0, i64 0, i32 0
  %1 = load i32, i32* %function_id, align 8, !tbaa !9
  switch i32 %1, label %for.inc [
    i32 0, label %for.end
    i32 11, label %sw.bb
    i32 12, label %sw.bb2
  ]

sw.bb:                                            ; preds = %for.cond
  %call = tail call fastcc i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* @OSSL_FUNC_core_obj_add_sigid(%struct.ossl_dispatch_st* noundef nonnull %in.addr.0) #7
  store i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* %call, i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)** @c_obj_add_sigid, align 8, !tbaa !7
  br label %for.inc

sw.bb2:                                           ; preds = %for.cond
  %call3 = tail call fastcc i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* @OSSL_FUNC_core_obj_create(%struct.ossl_dispatch_st* noundef nonnull %in.addr.0) #7
  store i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* %call3, i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)** @c_obj_create, align 8, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %sw.bb, %sw.bb2
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %in.addr.0, i64 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %2 = load i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)** @c_obj_create, align 8, !tbaa !7
  %call4 = tail call i32 %2(%struct.ossl_core_handle_st* noundef %handle, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0)) #5
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %3 = load i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)** @c_obj_create, align 8, !tbaa !7
  %call5 = tail call i32 %3(%struct.ossl_core_handle_st* noundef %handle, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0)) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %4 = load i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)** @c_obj_create, align 8, !tbaa !7
  %call8 = tail call i32 %4(%struct.ossl_core_handle_st* noundef %handle, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0)) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false7
  %5 = load i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)** @c_obj_add_sigid, align 8, !tbaa !7
  %call10 = tail call i32 %5(%struct.ossl_core_handle_st* noundef %handle, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0)) #5
  %tobool11.not = icmp ne i32 %call10, 0
  %. = zext i1 %tobool11.not to i32
  br label %return

return:                                           ; preds = %if.end, %for.end, %lor.lhs.false, %lor.lhs.false7
  %retval.0 = phi i32 [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %for.end ], [ %., %if.end ]
  ret i32 %retval.0
}

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OBJ_ln2nid(i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* @OSSL_FUNC_core_obj_add_sigid(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)**
  %1 = load i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)** %0, align 8, !tbaa !13
  ret i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* @OSSL_FUNC_core_obj_create(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #3 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)**
  %1 = load i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)*, i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)** %0, align 8, !tbaa !13
  ret i32 (%struct.ossl_core_handle_st*, i8*, i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal noalias %struct.ossl_algorithm_st* @obj_query(i8* nocapture noundef readnone %provctx, i32 noundef %operation_id, i32* nocapture noundef writeonly %no_cache) #4 {
entry:
  store i32 0, i32* %no_cache, align 4, !tbaa !3
  ret %struct.ossl_algorithm_st* null
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !4, i64 0}
!10 = !{!"ossl_dispatch_st", !4, i64 0, !8, i64 8}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!10, !8, i64 8}
