; ModuleID = 'crypto/dh/dh_check.c'
source_filename = "crypto/dh/dh_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_st = type { i32, i32, %struct.ffc_params_st, i32, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.ossl_lib_ctx_st*, %struct.dh_method*, i8*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/dh/dh_check.c\00", align 1
@__func__.DH_check_params_ex = private unnamed_addr constant [19 x i8] c"DH_check_params_ex\00", align 1
@__func__.DH_check_ex = private unnamed_addr constant [12 x i8] c"DH_check_ex\00", align 1
@__func__.DH_check_pub_key_ex = private unnamed_addr constant [20 x i8] c"DH_check_pub_key_ex\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @DH_check_params_ex(%struct.dh_st* nocapture noundef readonly %dh) local_unnamed_addr #0 {
entry:
  %errflags = alloca i32, align 4
  %0 = bitcast i32* %errflags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  store i32 0, i32* %errflags, align 4, !tbaa !4
  %call = call i32 @DH_check_params(%struct.dh_st* noundef %dh, i32* noundef nonnull %errflags) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %errflags, align 4, !tbaa !4
  %and = and i32 %1, 1
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.DH_check_params_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 117, i8* noundef null) #5
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %and3 = and i32 %1, 8
  %cmp4.not = icmp eq i32 %and3, 0
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.DH_check_params_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 120, i8* noundef null) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2
  %and7 = and i32 %1, 128
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.DH_check_params_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 126, i8* noundef null) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %and11 = and i32 %1, 256
  %cmp12.not = icmp eq i32 %and11, 0
  br i1 %cmp12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.DH_check_params_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 103, i8* noundef null) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %cmp15 = icmp eq i32 %1, 0
  %conv = zext i1 %cmp15 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14
  %retval.0 = phi i32 [ %conv, %if.end14 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @DH_check_params(%struct.dh_st* nocapture noundef readonly %dh, i32* nocapture noundef %ret) local_unnamed_addr #0 {
entry:
  store i32 0, i32* %ret, align 4, !tbaa !4
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #5
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call) #5
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #5
  %cmp2 = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call5 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %0) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %1 = load i32, i32* %ret, align 4, !tbaa !4
  %or = or i32 %1, 1
  store i32 %or, i32* %ret, align 4, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %g = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !14
  %call9 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %2) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.then20

lor.lhs.false:                                    ; preds = %if.end7
  %3 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !14
  %call13 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %3) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %if.then20

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %4 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !14
  %call18 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %4) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false15, %lor.lhs.false, %if.end7
  %5 = load i32, i32* %ret, align 4, !tbaa !4
  %or21 = or i32 %5, 8
  store i32 %or21, i32* %ret, align 4, !tbaa !4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %lor.lhs.false15
  %6 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call25 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef %6) #5
  %cmp26 = icmp eq %struct.bignum_st* %call25, null
  br i1 %cmp26, label %err, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end22
  %call28 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef nonnull %call1, i64 noundef 1) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %if.end31

if.end31:                                         ; preds = %lor.lhs.false27
  %7 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !14
  %call34 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %7, %struct.bignum_st* noundef nonnull %call1) #5
  %cmp35 = icmp sgt i32 %call34, -1
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end31
  %8 = load i32, i32* %ret, align 4, !tbaa !4
  %or37 = or i32 %8, 8
  store i32 %or37, i32* %ret, align 4, !tbaa !4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end31
  %9 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call41 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %9) #5
  %cmp42 = icmp slt i32 %call41, 512
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end38
  %10 = load i32, i32* %ret, align 4, !tbaa !4
  %or44 = or i32 %10, 128
  store i32 %or44, i32* %ret, align 4, !tbaa !4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end38
  %11 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call48 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %11) #5
  %cmp49 = icmp sgt i32 %call48, 10000
  br i1 %cmp49, label %if.then50, label %err

if.then50:                                        ; preds = %if.end45
  %12 = load i32, i32* %ret, align 4, !tbaa !4
  %or51 = or i32 %12, 256
  store i32 %or51, i32* %ret, align 4, !tbaa !4
  br label %err

err:                                              ; preds = %if.end45, %if.then50, %if.end22, %lor.lhs.false27, %if.end, %entry
  %ok.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end22 ], [ 0, %lor.lhs.false27 ], [ 1, %if.then50 ], [ 1, %if.end45 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call) #5
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #5
  ret i32 %ok.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @DH_check_ex(%struct.dh_st* noundef %dh) local_unnamed_addr #0 {
entry:
  %errflags = alloca i32, align 4
  %0 = bitcast i32* %errflags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  store i32 0, i32* %errflags, align 4, !tbaa !4
  %call = call i32 @DH_check(%struct.dh_st* noundef %dh, i32* noundef nonnull %errflags) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %errflags, align 4, !tbaa !4
  %and = and i32 %1, 8
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DH_check_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 120, i8* noundef null) #5
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %and3 = and i32 %1, 16
  %cmp4.not = icmp eq i32 %and3, 0
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DH_check_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 119, i8* noundef null) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2
  %and7 = and i32 %1, 32
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DH_check_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 116, i8* noundef null) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %and11 = and i32 %1, 64
  %cmp12.not = icmp eq i32 %and11, 0
  br i1 %cmp12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DH_check_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 115, i8* noundef null) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %and15 = and i32 %1, 4
  %cmp16.not = icmp eq i32 %and15, 0
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DH_check_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 121, i8* noundef null) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  %and19 = and i32 %1, 1
  %cmp20.not = icmp eq i32 %and19, 0
  br i1 %cmp20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DH_check_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 117, i8* noundef null) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18
  %and23 = and i32 %1, 2
  %cmp24.not = icmp eq i32 %and23, 0
  br i1 %cmp24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DH_check_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 118, i8* noundef null) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %and27 = and i32 %1, 128
  %cmp28.not = icmp eq i32 %and27, 0
  br i1 %cmp28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end26
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DH_check_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 126, i8* noundef null) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26
  %and31 = and i32 %1, 256
  %cmp32.not = icmp eq i32 %and31, 0
  br i1 %cmp32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.DH_check_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 103, i8* noundef null) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30
  %cmp35 = icmp eq i32 %1, 0
  %conv = zext i1 %cmp35 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end34
  %retval.0 = phi i32 [ %conv, %if.end34 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @DH_check(%struct.dh_st* noundef %dh, i32* nocapture noundef %ret) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @DH_get_nid(%struct.dh_st* noundef %dh) #5
  store i32 0, i32* %ret, align 4, !tbaa !4
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @DH_check_params(%struct.dh_st* noundef %dh, i32* noundef nonnull %ret) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.bignum_ctx* @BN_CTX_new() #5
  %cmp5 = icmp eq %struct.bignum_ctx* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call4) #5
  %call8 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call4) #5
  %call9 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call4) #5
  %cmp10 = icmp eq %struct.bignum_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end7
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2
  %q = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !15
  %cmp13.not = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp13.not, label %if.end77, label %if.then14

if.then14:                                        ; preds = %if.end12
  %g = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !14
  %call16 = tail call %struct.bignum_st* @BN_value_one() #5
  %call17 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %1, %struct.bignum_st* noundef %call16) #5
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %if.end44.sink.split, label %if.else

if.else:                                          ; preds = %if.then14
  %2 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !14
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %3 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call23 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3) #5
  %cmp24 = icmp sgt i32 %call23, -1
  br i1 %cmp24, label %if.end44.sink.split, label %if.else27

if.else27:                                        ; preds = %if.else
  %4 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !14
  %5 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !15
  %6 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call34 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef %6, %struct.bignum_ctx* noundef nonnull %call4) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.else27
  %call38 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call8) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44.sink.split, label %if.end44

if.end44.sink.split:                              ; preds = %if.end37, %if.else, %if.then14
  %7 = load i32, i32* %ret, align 4, !tbaa !4
  %or26 = or i32 %7, 8
  store i32 %or26, i32* %ret, align 4, !tbaa !4
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.end37
  %8 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !15
  %call47 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %8, %struct.bignum_ctx* noundef nonnull %call4, %struct.bn_gencb_st* noundef null) #5
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %err, label %if.end50

if.end50:                                         ; preds = %if.end44
  %tobool51.not = icmp eq i32 %call47, 0
  br i1 %tobool51.not, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end50
  %9 = load i32, i32* %ret, align 4, !tbaa !4
  %or53 = or i32 %9, 16
  store i32 %or53, i32* %ret, align 4, !tbaa !4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end50
  %p56 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %10 = load %struct.bignum_st*, %struct.bignum_st** %p56, align 8, !tbaa !8
  %11 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !15
  %call59 = tail call i32 @BN_div(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef nonnull %call9, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11, %struct.bignum_ctx* noundef nonnull %call4) #5
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %if.end62

if.end62:                                         ; preds = %if.end54
  %call63 = tail call i32 @BN_is_one(%struct.bignum_st* noundef nonnull %call9) #5
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end62
  %12 = load i32, i32* %ret, align 4, !tbaa !4
  %or66 = or i32 %12, 32
  store i32 %or66, i32* %ret, align 4, !tbaa !4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62
  %j = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 3
  %13 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !16
  %cmp69.not = icmp eq %struct.bignum_st* %13, null
  br i1 %cmp69.not, label %if.end77, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end67
  %call72 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %13, %struct.bignum_st* noundef %call8) #5
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end77, label %if.then74

if.then74:                                        ; preds = %land.lhs.true
  %14 = load i32, i32* %ret, align 4, !tbaa !4
  %or75 = or i32 %14, 64
  store i32 %or75, i32* %ret, align 4, !tbaa !4
  br label %if.end77

if.end77:                                         ; preds = %if.end67, %land.lhs.true, %if.then74, %if.end12
  %p79 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %15 = load %struct.bignum_st*, %struct.bignum_st** %p79, align 8, !tbaa !8
  %call80 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %15, %struct.bignum_ctx* noundef nonnull %call4, %struct.bn_gencb_st* noundef null) #5
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %err, label %if.end83

if.end83:                                         ; preds = %if.end77
  %tobool84.not = icmp eq i32 %call80, 0
  br i1 %tobool84.not, label %err.sink.split, label %if.else87

if.else87:                                        ; preds = %if.end83
  %16 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !15
  %cmp90 = icmp eq %struct.bignum_st* %16, null
  br i1 %cmp90, label %if.then91, label %err

if.then91:                                        ; preds = %if.else87
  %17 = load %struct.bignum_st*, %struct.bignum_st** %p79, align 8, !tbaa !8
  %call94 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %17) #5
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %if.end97

if.end97:                                         ; preds = %if.then91
  %call98 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %call8, %struct.bignum_ctx* noundef nonnull %call4, %struct.bn_gencb_st* noundef null) #5
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %err, label %if.end101

if.end101:                                        ; preds = %if.end97
  %tobool102.not = icmp eq i32 %call98, 0
  br i1 %tobool102.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %if.end101, %if.end83
  %.sink166 = phi i32 [ 1, %if.end83 ], [ 2, %if.end101 ]
  %18 = load i32, i32* %ret, align 4, !tbaa !4
  %or86 = or i32 %18, %.sink166
  store i32 %or86, i32* %ret, align 4, !tbaa !4
  br label %err

err:                                              ; preds = %err.sink.split, %if.end101, %if.else87, %if.end97, %if.then91, %if.end77, %if.end54, %if.end44, %if.else27, %if.end7, %if.end3
  %ok.0 = phi i32 [ 0, %if.end3 ], [ 0, %if.end7 ], [ 0, %if.end44 ], [ 0, %if.end77 ], [ 0, %if.end97 ], [ 0, %if.then91 ], [ 0, %if.end54 ], [ 0, %if.else27 ], [ 1, %if.else87 ], [ 1, %if.end101 ], [ 1, %err.sink.split ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call4) #5
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi i32 [ %ok.0, %err ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @DH_get_nid(%struct.dh_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #2

declare i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_check_prime(%struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_rshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @DH_check_pub_key_ex(%struct.dh_st* noundef %dh, %struct.bignum_st* noundef %pub_key) local_unnamed_addr #0 {
entry:
  %errflags = alloca i32, align 4
  %0 = bitcast i32* %errflags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  store i32 0, i32* %errflags, align 4, !tbaa !4
  %call = call i32 @DH_check_pub_key(%struct.dh_st* noundef %dh, %struct.bignum_st* noundef %pub_key, i32* noundef nonnull %errflags) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %errflags, align 4, !tbaa !4
  %and = and i32 %1, 1
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.DH_check_pub_key_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 124, i8* noundef null) #5
  %.pre = load i32, i32* %errflags, align 4, !tbaa !4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %2 = phi i32 [ %.pre, %if.then1 ], [ %1, %if.end ]
  %and3 = and i32 %2, 2
  %cmp4.not = icmp eq i32 %and3, 0
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.DH_check_pub_key_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 123, i8* noundef null) #5
  %.pre12 = load i32, i32* %errflags, align 4, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2
  %3 = phi i32 [ %.pre12, %if.then5 ], [ %2, %if.end2 ]
  %and7 = and i32 %3, 4
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.DH_check_pub_key_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 122, i8* noundef null) #5
  %.pre13 = load i32, i32* %errflags, align 4, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %4 = phi i32 [ %.pre13, %if.then9 ], [ %3, %if.end6 ]
  %cmp11 = icmp eq i32 %4, 0
  %conv = zext i1 %cmp11 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10
  %retval.0 = phi i32 [ %conv, %if.end10 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @DH_check_pub_key(%struct.dh_st* noundef %dh, %struct.bignum_st* noundef %pub_key, i32* noundef %ret) local_unnamed_addr #0 {
entry:
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2
  %call = tail call i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef nonnull %params, %struct.bignum_st* noundef %pub_key, i32* noundef %ret) #5
  ret i32 %call
}

declare i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* noundef, %struct.bignum_st* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_check_pub_key_partial(%struct.dh_st* noundef %dh, %struct.bignum_st* noundef %pub_key, i32* noundef %ret) local_unnamed_addr #0 {
entry:
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2
  %call = tail call i32 @ossl_ffc_validate_public_key_partial(%struct.ffc_params_st* noundef nonnull %params, %struct.bignum_st* noundef %pub_key, i32* noundef %ret) #5
  ret i32 %call
}

declare i32 @ossl_ffc_validate_public_key_partial(%struct.ffc_params_st* noundef, %struct.bignum_st* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_check_priv_key(%struct.dh_st* noundef %dh, %struct.bignum_st* noundef %priv_key, i32* noundef %ret) local_unnamed_addr #0 {
entry:
  store i32 0, i32* %ret, align 4, !tbaa !4
  %call = tail call %struct.bignum_st* @BN_new() #5
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %q = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp1, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call6 = tail call i32 @DH_get_nid(%struct.dh_st* noundef nonnull %dh) #5
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %length = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 3
  %1 = load i32, i32* %length, align 8, !tbaa !17
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %if.end21, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %call10 = tail call %struct.bignum_st* @BN_value_one() #5
  %2 = load i32, i32* %length, align 8, !tbaa !17
  %call12 = tail call i32 @BN_lshift(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %call10, i32 noundef %2) #5
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.then9
  %3 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !15
  %call17 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %3) #5
  %cmp18 = icmp slt i32 %call17, 0
  %spec.select = select i1 %cmp18, %struct.bignum_st* %call, %struct.bignum_st* %0
  br label %if.end21

if.end21:                                         ; preds = %if.end14, %land.lhs.true, %if.end3
  %upper.0 = phi %struct.bignum_st* [ %0, %land.lhs.true ], [ %0, %if.end3 ], [ %spec.select, %if.end14 ]
  %call22 = tail call i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef nonnull %upper.0, %struct.bignum_st* noundef %priv_key, i32* noundef nonnull %ret) #5
  %tobool23.not = icmp ne i32 %call22, 0
  %spec.select41 = zext i1 %tobool23.not to i32
  br label %err

err:                                              ; preds = %if.end21, %if.then9, %if.end
  %ok.0 = phi i32 [ 0, %if.end ], [ 0, %if.then9 ], [ %spec.select41, %if.end21 ]
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ok.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_check_pairwise(%struct.dh_st* noundef %dh) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %g = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !14
  %cmp2 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %priv_key = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !18
  %cmp4 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp4, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %pub_key6 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 4
  %3 = load %struct.bignum_st*, %struct.bignum_st** %pub_key6, align 8, !tbaa !19
  %cmp7 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp7, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %libctx = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 11
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !20
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %4) #5
  %cmp8 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp8, label %err, label %if.end10

if.end10:                                         ; preds = %if.end
  %call11 = tail call %struct.bignum_st* @BN_new() #5
  %cmp12 = icmp eq %struct.bignum_st* %call11, null
  br i1 %cmp12, label %err, label %if.end14

if.end14:                                         ; preds = %if.end10
  %5 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !18
  %call16 = tail call i32 @ossl_dh_generate_public_key(%struct.bignum_ctx* noundef nonnull %call, %struct.dh_st* noundef nonnull %dh, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef nonnull %call11) #5
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  %6 = load %struct.bignum_st*, %struct.bignum_st** %pub_key6, align 8, !tbaa !19
  %call20 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef %6) #5
  %cmp21 = icmp eq i32 %call20, 0
  %conv = zext i1 %cmp21 to i32
  br label %err

err:                                              ; preds = %if.end14, %if.end10, %if.end, %if.end18
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %if.end10 ], [ %conv, %if.end18 ], [ 0, %if.end14 ]
  %pub_key.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %if.end10 ], [ %call11, %if.end18 ], [ %call11, %if.end14 ]
  tail call void @BN_free(%struct.bignum_st* noundef %pub_key.0) #5
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false5, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_dh_generate_public_key(%struct.bignum_ctx* noundef, %struct.dh_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 8}
!9 = !{!"dh_st", !5, i64 0, !5, i64 4, !10, i64 8, !5, i64 96, !11, i64 104, !11, i64 112, !5, i64 120, !11, i64 128, !6, i64 136, !13, i64 144, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !12, i64 192}
!10 = !{!"ffc_params_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !11, i64 72, !11, i64 80}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"crypto_ex_data_st", !11, i64 0, !11, i64 8}
!14 = !{!9, !11, i64 24}
!15 = !{!9, !11, i64 16}
!16 = !{!9, !11, i64 32}
!17 = !{!9, !5, i64 96}
!18 = !{!9, !11, i64 112}
!19 = !{!9, !11, i64 104}
!20 = !{!9, !11, i64 168}
