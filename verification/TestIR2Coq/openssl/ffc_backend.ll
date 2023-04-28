; ModuleID = 'crypto/ffc/ffc_backend.c'
source_filename = "crypto/ffc/ffc_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.dh_named_group_st = type opaque

@.str = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gindex\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pcounter\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"hindex\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"validate-pq\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"validate-g\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"validate-legacy\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"properties\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_fromdata(%struct.ffc_params_st* noundef %ffc, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %q = alloca %struct.bignum_st*, align 8
  %g = alloca %struct.bignum_st*, align 8
  %j = alloca %struct.bignum_st*, align 8
  %i = alloca i32, align 4
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !4
  %1 = bitcast %struct.bignum_st** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  store %struct.bignum_st* null, %struct.bignum_st** %q, align 8, !tbaa !4
  %2 = bitcast %struct.bignum_st** %g to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #3
  store %struct.bignum_st* null, %struct.bignum_st** %g, align 8, !tbaa !4
  %3 = bitcast %struct.bignum_st** %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #3
  store %struct.bignum_st* null, %struct.bignum_st** %j, align 8, !tbaa !4
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #3
  %cmp = icmp eq %struct.ffc_params_st* %ffc, null
  br i1 %cmp, label %cleanup122, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #4
  %cmp1.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp1.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %if.end
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call, i64 0, i32 1
  %5 = load i32, i32* %data_type, align 8, !tbaa !8
  %cmp3.not = icmp eq i32 %5, 4
  br i1 %cmp3.not, label %lor.lhs.false, label %err

lor.lhs.false:                                    ; preds = %if.then2
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call, i64 0, i32 2
  %6 = load i8*, i8** %data, align 8, !tbaa !12
  %call4 = tail call %struct.dh_named_group_st* @ossl_ffc_name_to_dh_named_group(i8* noundef %6) #4
  %cmp5 = icmp eq %struct.dh_named_group_st* %call4, null
  br i1 %cmp5, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @ossl_ffc_named_group_set_pqg(%struct.ffc_params_st* noundef nonnull %ffc, %struct.dh_named_group_st* noundef nonnull %call4) #4
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false6, %if.end
  %call11 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  %call12 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #4
  %call13 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #4
  %cmp14.not = icmp eq %struct.ossl_param_st* %call11, null
  br i1 %cmp14.not, label %lor.lhs.false17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %call15 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call11, %struct.bignum_st** noundef nonnull %p) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %land.lhs.true, %if.end10
  %cmp18.not = icmp eq %struct.ossl_param_st* %call13, null
  br i1 %cmp18.not, label %lor.lhs.false22, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %lor.lhs.false17
  %call20 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call13, %struct.bignum_st** noundef nonnull %q) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %land.lhs.true19, %lor.lhs.false17
  %cmp23.not = icmp eq %struct.ossl_param_st* %call12, null
  br i1 %cmp23.not, label %if.end28, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %lor.lhs.false22
  %call25 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call12, %struct.bignum_st** noundef nonnull %g) #4
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %if.end28

if.end28:                                         ; preds = %land.lhs.true24, %lor.lhs.false22
  %call29 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #4
  %cmp30.not = icmp eq %struct.ossl_param_st* %call29, null
  br i1 %cmp30.not, label %if.end36, label %if.then31

if.then31:                                        ; preds = %if.end28
  %call32 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call29, i32* noundef nonnull %i) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.then31
  %7 = load i32, i32* %i, align 4, !tbaa !13
  %gindex = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 8
  store i32 %7, i32* %gindex, align 8, !tbaa !14
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end28
  %call37 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #4
  %cmp38.not = icmp eq %struct.ossl_param_st* %call37, null
  br i1 %cmp38.not, label %if.end44, label %if.then39

if.then39:                                        ; preds = %if.end36
  %call40 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call37, i32* noundef nonnull %i) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end43

if.end43:                                         ; preds = %if.then39
  %8 = load i32, i32* %i, align 4, !tbaa !13
  %pcounter = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 6
  store i32 %8, i32* %pcounter, align 8, !tbaa !16
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end36
  %call45 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #4
  %cmp46.not = icmp eq %struct.ossl_param_st* %call45, null
  br i1 %cmp46.not, label %if.end51, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %if.end44
  %call48 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call45, %struct.bignum_st** noundef nonnull %j) #4
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end51

if.end51:                                         ; preds = %land.lhs.true47, %if.end44
  %call52 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #4
  %cmp53.not = icmp eq %struct.ossl_param_st* %call52, null
  br i1 %cmp53.not, label %if.end59, label %if.then54

if.then54:                                        ; preds = %if.end51
  %call55 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call52, i32* noundef nonnull %i) #4
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %if.end58

if.end58:                                         ; preds = %if.then54
  %9 = load i32, i32* %i, align 4, !tbaa !13
  %h = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 9
  store i32 %9, i32* %h, align 4, !tbaa !17
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end51
  %call60 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #4
  %cmp61.not = icmp eq %struct.ossl_param_st* %call60, null
  br i1 %cmp61.not, label %if.end72, label %if.then62

if.then62:                                        ; preds = %if.end59
  %data_type63 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call60, i64 0, i32 1
  %10 = load i32, i32* %data_type63, align 8, !tbaa !8
  %cmp64.not = icmp eq i32 %10, 5
  br i1 %cmp64.not, label %if.end66, label %err

if.end66:                                         ; preds = %if.then62
  %data67 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call60, i64 0, i32 2
  %11 = load i8*, i8** %data67, align 8, !tbaa !12
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call60, i64 0, i32 3
  %12 = load i64, i64* %data_size, align 8, !tbaa !18
  %call68 = call i32 @ossl_ffc_params_set_seed(%struct.ffc_params_st* noundef nonnull %ffc, i8* noundef %11, i64 noundef %12) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end72

if.end72:                                         ; preds = %if.end66, %if.end59
  %call73 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #4
  %cmp74.not = icmp eq %struct.ossl_param_st* %call73, null
  br i1 %cmp74.not, label %if.end80, label %if.then75

if.then75:                                        ; preds = %if.end72
  %call76 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call73, i32* noundef nonnull %i) #4
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %if.end79

if.end79:                                         ; preds = %if.then75
  %13 = load i32, i32* %i, align 4, !tbaa !13
  call void @ossl_ffc_params_enable_flags(%struct.ffc_params_st* noundef nonnull %ffc, i32 noundef 1, i32 noundef %13) #4
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end72
  %call81 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)) #4
  %cmp82.not = icmp eq %struct.ossl_param_st* %call81, null
  br i1 %cmp82.not, label %if.end88, label %if.then83

if.then83:                                        ; preds = %if.end80
  %call84 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call81, i32* noundef nonnull %i) #4
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %if.end87

if.end87:                                         ; preds = %if.then83
  %14 = load i32, i32* %i, align 4, !tbaa !13
  call void @ossl_ffc_params_enable_flags(%struct.ffc_params_st* noundef nonnull %ffc, i32 noundef 2, i32 noundef %14) #4
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end80
  %call89 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #4
  %cmp90.not = icmp eq %struct.ossl_param_st* %call89, null
  br i1 %cmp90.not, label %if.end96, label %if.then91

if.then91:                                        ; preds = %if.end88
  %call92 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call89, i32* noundef nonnull %i) #4
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %if.end95

if.end95:                                         ; preds = %if.then91
  %15 = load i32, i32* %i, align 4, !tbaa !13
  call void @ossl_ffc_params_enable_flags(%struct.ffc_params_st* noundef nonnull %ffc, i32 noundef 4, i32 noundef %15) #4
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end88
  %call97 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #4
  %cmp98.not = icmp eq %struct.ossl_param_st* %call97, null
  br i1 %cmp98.not, label %if.end121, label %if.then99

if.then99:                                        ; preds = %if.end96
  %data_type100 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call97, i64 0, i32 1
  %16 = load i32, i32* %data_type100, align 8, !tbaa !8
  %cmp101.not = icmp eq i32 %16, 4
  br i1 %cmp101.not, label %if.end103, label %err

if.end103:                                        ; preds = %if.then99
  %call104 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)) #4
  %cmp105.not = icmp eq %struct.ossl_param_st* %call104, null
  br i1 %cmp105.not, label %if.end111, label %if.then106

if.then106:                                       ; preds = %if.end103
  %data_type107 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call104, i64 0, i32 1
  %17 = load i32, i32* %data_type107, align 8, !tbaa !8
  %cmp108.not = icmp eq i32 %17, 4
  br i1 %cmp108.not, label %if.end111, label %err

if.end111:                                        ; preds = %if.then106, %if.end103
  %data112 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call97, i64 0, i32 2
  %18 = load i8*, i8** %data112, align 8, !tbaa !12
  %call113 = call i32 @ossl_ffc_set_digest(%struct.ffc_params_st* noundef nonnull %ffc, i8* noundef %18, i8* noundef null) #4
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %if.end121

if.end121:                                        ; preds = %if.end111, %if.end96
  %19 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %20 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  %21 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !4
  call void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef nonnull %ffc, %struct.bignum_st* noundef %19, %struct.bignum_st* noundef %20, %struct.bignum_st* noundef %21) #4
  %22 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !4
  call void @ossl_ffc_params_set0_j(%struct.ffc_params_st* noundef nonnull %ffc, %struct.bignum_st* noundef %22) #4
  br label %cleanup122

err:                                              ; preds = %if.end111, %if.then106, %if.then99, %lor.lhs.false6, %if.then2, %lor.lhs.false, %if.then91, %if.then83, %if.then75, %if.end66, %if.then62, %if.then54, %land.lhs.true47, %if.then39, %if.then31, %land.lhs.true, %land.lhs.true19, %land.lhs.true24
  %23 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %23) #4
  %24 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %24) #4
  %25 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %25) #4
  %26 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !4
  call void @BN_free(%struct.bignum_st* noundef %26) #4
  br label %cleanup122

cleanup122:                                       ; preds = %entry, %err, %if.end121
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end121 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.dh_named_group_st* @ossl_ffc_name_to_dh_named_group(i8* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_named_group_set_pqg(%struct.ffc_params_st* noundef, %struct.dh_named_group_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_set_seed(%struct.ffc_params_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @ossl_ffc_params_enable_flags(%struct.ffc_params_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_set_digest(%struct.ffc_params_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @ossl_ffc_params_set0_j(%struct.ffc_params_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!9, !10, i64 8}
!9 = !{!"ossl_param_st", !5, i64 0, !10, i64 8, !5, i64 16, !11, i64 24, !11, i64 32}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !5, i64 16}
!13 = !{!10, !10, i64 0}
!14 = !{!15, !10, i64 56}
!15 = !{!"ffc_params_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !11, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !5, i64 72, !5, i64 80}
!16 = !{!15, !10, i64 48}
!17 = !{!15, !10, i64 60}
!18 = !{!9, !11, i64 24}
