; ModuleID = 'apps/lib/tlssrp_depr.c'
source_filename = "apps/lib/tlssrp_depr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.srp_arg_st = type { i8*, i8*, i32, i32, i32, i32 }
%struct.ssl_st = type opaque
%struct.pw_cb_data = type { i8*, i8* }
%struct.bignum_st = type opaque
%struct.srpsrvparm_st = type { i8*, %struct.SRP_VBASE_st*, %struct.SRP_user_pwd_st* }
%struct.SRP_VBASE_st = type { %struct.stack_st_SRP_user_pwd*, %struct.stack_st_SRP_gN_cache*, i8*, %struct.bignum_st*, %struct.bignum_st* }
%struct.stack_st_SRP_user_pwd = type opaque
%struct.stack_st_SRP_gN_cache = type opaque
%struct.SRP_user_pwd_st = type { i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8* }
%struct.x509_store_ctx_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque

@bio_err = external local_unnamed_addr global %struct.bio_st*, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unable to set SRP username\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to initialize SRP verifier file \0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Cannot initialize SRP verifier file \22%s\22:ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LOOKUP done %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"LOOKUP not successful\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"SRP password buffer\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SRP user\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Can't read Password\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"apps/lib/tlssrp_depr.c\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"SRP parameters:\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"\09N=\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\0A\09g=\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"SRP param N and g are not known params, going to check deeper.\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"SRP param N and g rejected.\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"SRP username = \22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"User %s doesn't exist\0A\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"SRP parameters set: username = \22%s\22 info=\22%s\22 \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @set_up_srp_arg(%struct.ssl_ctx_st* noundef %ctx, %struct.srp_arg_st* noundef %srp_arg, i32 noundef %srp_lateuser, i32 noundef %c_msg, i32 noundef %c_debug) local_unnamed_addr #0 {
entry:
  %srp_arg.addr = alloca %struct.srp_arg_st*, align 8
  store %struct.srp_arg_st* %srp_arg, %struct.srp_arg_st** %srp_arg.addr, align 8, !tbaa !4
  %tobool.not = icmp eq i32 %srp_lateuser, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %srplogin = getelementptr inbounds %struct.srp_arg_st, %struct.srp_arg_st* %srp_arg, i64 0, i32 1
  %0 = load i8*, i8** %srplogin, align 8, !tbaa !8
  %call = tail call i32 @SSL_CTX_set_srp_username(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %0) #4
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %msg = getelementptr inbounds %struct.srp_arg_st, %struct.srp_arg_st* %srp_arg, i64 0, i32 2
  store i32 %c_msg, i32* %msg, align 8, !tbaa !11
  %debug = getelementptr inbounds %struct.srp_arg_st, %struct.srp_arg_st* %srp_arg, i64 0, i32 3
  store i32 %c_debug, i32* %debug, align 4, !tbaa !12
  %2 = bitcast %struct.srp_arg_st** %srp_arg.addr to i8*
  %call3 = call i32 @SSL_CTX_set_srp_cb_arg(%struct.ssl_ctx_st* noundef %ctx, i8* noundef nonnull %2) #4
  %call4 = call i32 @SSL_CTX_set_srp_client_pwd_callback(%struct.ssl_ctx_st* noundef %ctx, i8* (%struct.ssl_st*, i8*)* noundef nonnull @ssl_give_srp_client_pwd_cb) #4
  %3 = load %struct.srp_arg_st*, %struct.srp_arg_st** %srp_arg.addr, align 8, !tbaa !4
  %strength = getelementptr inbounds %struct.srp_arg_st, %struct.srp_arg_st* %3, i64 0, i32 5
  %4 = load i32, i32* %strength, align 4, !tbaa !13
  %call5 = call i32 @SSL_CTX_set_srp_strength(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %4) #4
  %5 = or i32 %c_debug, %c_msg
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %lor.lhs.false8, label %if.then9

lor.lhs.false8:                                   ; preds = %if.end
  %6 = load %struct.srp_arg_st*, %struct.srp_arg_st** %srp_arg.addr, align 8, !tbaa !4
  %amp = getelementptr inbounds %struct.srp_arg_st, %struct.srp_arg_st* %6, i64 0, i32 4
  %7 = load i32, i32* %amp, align 8, !tbaa !14
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then9, label %return

if.then9:                                         ; preds = %lor.lhs.false8, %if.end
  %call10 = call i32 @SSL_CTX_set_srp_verify_param_callback(%struct.ssl_ctx_st* noundef %ctx, i32 (%struct.ssl_st*, i8*)* noundef nonnull @ssl_srp_verify_param_cb) #4
  br label %return

return:                                           ; preds = %lor.lhs.false8, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then9 ], [ 1, %lor.lhs.false8 ]
  ret i32 %retval.0
}

declare i32 @SSL_CTX_set_srp_username(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @SSL_CTX_set_srp_cb_arg(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @SSL_CTX_set_srp_client_pwd_callback(%struct.ssl_ctx_st* noundef, i8* (%struct.ssl_st*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @ssl_give_srp_client_pwd_cb(%struct.ssl_st* nocapture noundef readnone %s, i8* nocapture noundef readonly %arg) #0 {
entry:
  %cb_tmp = alloca %struct.pw_cb_data, align 8
  %call = tail call i8* @app_malloc(i64 noundef 1025, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0)) #4
  %0 = bitcast %struct.pw_cb_data* %cb_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %srppassin = bitcast i8* %arg to i8**
  %1 = load i8*, i8** %srppassin, align 8, !tbaa !15
  %password = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %cb_tmp, i64 0, i32 0
  store i8* %1, i8** %password, align 8, !tbaa !16
  %prompt_info = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %cb_tmp, i64 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %prompt_info, align 8, !tbaa !18
  %call1 = call i32 @password_callback(i8* noundef %call, i32 noundef 1024, i32 noundef 0, %struct.pw_cb_data* noundef nonnull %cb_tmp) #4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0)) #4
  call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 noundef 114) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %idx.ext12 = zext i32 %call1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext12
  store i8 0, i8* %add.ptr, align 1, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret i8* %retval.0
}

declare i32 @SSL_CTX_set_srp_strength(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @SSL_CTX_set_srp_verify_param_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_srp_verify_param_cb(%struct.ssl_st* noundef %s, i8* nocapture noundef readonly %arg) #0 {
entry:
  %call = tail call %struct.bignum_st* @SSL_get_srp_N(%struct.ssl_st* noundef %s) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.bignum_st* @SSL_get_srp_g(%struct.ssl_st* noundef %s) #4
  %cmp2 = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %debug = getelementptr inbounds i8, i8* %arg, i64 20
  %0 = bitcast i8* %debug to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !12
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false3, label %if.then7

lor.lhs.false3:                                   ; preds = %if.end
  %msg = getelementptr inbounds i8, i8* %arg, i64 16
  %2 = bitcast i8* %msg to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !11
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %if.then7

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %amp = getelementptr inbounds i8, i8* %arg, i64 24
  %4 = bitcast i8* %amp to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !14
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false3, %if.end
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0)) #4
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #4
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call10 = tail call i32 @BN_print(%struct.bio_st* noundef %8, %struct.bignum_st* noundef nonnull %call) #4
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #4
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call12 = tail call i32 @BN_print(%struct.bio_st* noundef %10, %struct.bignum_st* noundef nonnull %call1) #4
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %lor.lhs.false5
  %call15 = tail call i8* @SRP_check_known_gN_param(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %call) #4
  %tobool16.not = icmp eq i8* %call15, null
  br i1 %tobool16.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.end14
  %amp19 = getelementptr inbounds i8, i8* %arg, i64 24
  %12 = bitcast i8* %amp19 to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !14
  %cmp20 = icmp eq i32 %13, 1
  br i1 %cmp20, label %if.then21, label %if.end33

if.then21:                                        ; preds = %if.end18
  %14 = load i32, i32* %0, align 4, !tbaa !12
  %tobool23.not = icmp eq i32 %14, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.then21
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call25 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i64 0, i64 0)) #4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then21
  %call27 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call1) #4
  %cmp28 = icmp slt i32 %call27, 129
  br i1 %cmp28, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end26
  %call29 = tail call fastcc i32 @srp_Verify_N_and_g(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef nonnull %call1) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %cleanup

if.end33:                                         ; preds = %if.end26, %land.lhs.true, %if.end18
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call34 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0)) #4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end14, %entry, %lor.lhs.false, %if.end33
  %retval.0 = phi i32 [ 0, %if.end33 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.end14 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @set_up_dummy_srp(%struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SSL_CTX_set_srp_client_pwd_callback(%struct.ssl_ctx_st* noundef %ctx, i8* (%struct.ssl_st*, i8*)* noundef nonnull @dummy_srp) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i8* @dummy_srp(%struct.ssl_st* nocapture noundef readnone %ssl, i8* nocapture noundef readnone %arg) #2 {
entry:
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_up_srp_verifier_file(%struct.ssl_ctx_st* noundef %ctx, %struct.srpsrvparm_st* noundef %srp_callback_parm, i8* noundef %srpuserseed, i8* noundef %srp_verifier_file) local_unnamed_addr #0 {
entry:
  %srp_callback_parm.addr = alloca %struct.srpsrvparm_st*, align 8
  store %struct.srpsrvparm_st* %srp_callback_parm, %struct.srpsrvparm_st** %srp_callback_parm.addr, align 8, !tbaa !4
  %call = tail call %struct.SRP_VBASE_st* @SRP_VBASE_new(i8* noundef %srpuserseed) #4
  %vb = getelementptr inbounds %struct.srpsrvparm_st, %struct.srpsrvparm_st* %srp_callback_parm, i64 0, i32 1
  store %struct.SRP_VBASE_st* %call, %struct.SRP_VBASE_st** %vb, align 8, !tbaa !20
  %user = getelementptr inbounds %struct.srpsrvparm_st, %struct.srpsrvparm_st* %srp_callback_parm, i64 0, i32 2
  store %struct.SRP_user_pwd_st* null, %struct.SRP_user_pwd_st** %user, align 8, !tbaa !22
  %login = getelementptr inbounds %struct.srpsrvparm_st, %struct.srpsrvparm_st* %srp_callback_parm, i64 0, i32 0
  store i8* null, i8** %login, align 8, !tbaa !23
  %cmp = icmp eq %struct.SRP_VBASE_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @SRP_VBASE_init(%struct.SRP_VBASE_st* noundef nonnull %call, i8* noundef %srp_verifier_file) #4
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* noundef %srp_verifier_file, i32 noundef %call4) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @SSL_CTX_set_verify(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 0, i32 (i32, %struct.x509_store_ctx_st*)* noundef nonnull @verify_callback) #4
  %2 = bitcast %struct.srpsrvparm_st** %srp_callback_parm.addr to i8*
  %call9 = call i32 @SSL_CTX_set_srp_cb_arg(%struct.ssl_ctx_st* noundef %ctx, i8* noundef nonnull %2) #4
  %call10 = call i32 @SSL_CTX_set_srp_username_callback(%struct.ssl_ctx_st* noundef %ctx, i32 (%struct.ssl_st*, i32*, i8*)* noundef nonnull @ssl_srp_server_param_cb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 1, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.SRP_VBASE_st* @SRP_VBASE_new(i8* noundef) local_unnamed_addr #1

declare i32 @SRP_VBASE_init(%struct.SRP_VBASE_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @SSL_CTX_set_verify(%struct.ssl_ctx_st* noundef, i32 noundef, i32 (i32, %struct.x509_store_ctx_st*)* noundef) local_unnamed_addr #1

declare i32 @verify_callback(i32 noundef, %struct.x509_store_ctx_st* noundef) #1

declare i32 @SSL_CTX_set_srp_username_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i32*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_srp_server_param_cb(%struct.ssl_st* noundef %s, i32* nocapture noundef writeonly %ad, i8* nocapture noundef %arg) #0 {
entry:
  %login = bitcast i8* %arg to i8**
  %0 = load i8*, i8** %login, align 8, !tbaa !23
  %cmp = icmp eq i8* %0, null
  %user = getelementptr inbounds i8, i8* %arg, i64 16
  %1 = bitcast i8* %user to %struct.SRP_user_pwd_st**
  %2 = load %struct.SRP_user_pwd_st*, %struct.SRP_user_pwd_st** %1, align 8, !tbaa !22
  %cmp1 = icmp eq %struct.SRP_user_pwd_st* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp1, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i8* @SSL_get_srp_username(%struct.ssl_st* noundef %s) #4
  store i8* %call, i8** %login, align 8, !tbaa !23
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp1, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %0) #4
  br label %err

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %N = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %2, i64 0, i32 4
  %5 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !24
  %g = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %2, i64 0, i32 3
  %6 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !26
  %s14 = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %2, i64 0, i32 1
  %7 = load %struct.bignum_st*, %struct.bignum_st** %s14, align 8, !tbaa !27
  %v = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %2, i64 0, i32 2
  %8 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !28
  %info = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %2, i64 0, i32 5
  %9 = load i8*, i8** %info, align 8, !tbaa !29
  %call17 = tail call i32 @SSL_set_srp_server_param(%struct.ssl_st* noundef %s, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef %6, %struct.bignum_st* noundef %7, %struct.bignum_st* noundef %8, i8* noundef %9) #4
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end10
  store i32 80, i32* %ad, align 4, !tbaa !30
  br label %err

if.end20:                                         ; preds = %if.end10
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  %11 = load i8*, i8** %login, align 8, !tbaa !23
  %12 = load %struct.SRP_user_pwd_st*, %struct.SRP_user_pwd_st** %1, align 8, !tbaa !22
  %info23 = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %12, i64 0, i32 5
  %13 = load i8*, i8** %info23, align 8, !tbaa !29
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i8* noundef %11, i8* noundef %13) #4
  br label %err

err:                                              ; preds = %if.end20, %if.then19, %if.then7
  %ret.0 = phi i32 [ 2, %if.then7 ], [ 2, %if.then19 ], [ 0, %if.end20 ]
  %14 = load %struct.SRP_user_pwd_st*, %struct.SRP_user_pwd_st** %1, align 8, !tbaa !22
  tail call void @SRP_user_pwd_free(%struct.SRP_user_pwd_st* noundef %14) #4
  store %struct.SRP_user_pwd_st* null, %struct.SRP_user_pwd_st** %1, align 8, !tbaa !22
  store i8* null, i8** %login, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define void @lookup_srp_user(%struct.srpsrvparm_st* nocapture noundef %srp_callback_parm, %struct.bio_st* noundef %bio_s_out) local_unnamed_addr #0 {
entry:
  %user = getelementptr inbounds %struct.srpsrvparm_st, %struct.srpsrvparm_st* %srp_callback_parm, i64 0, i32 2
  %0 = load %struct.SRP_user_pwd_st*, %struct.SRP_user_pwd_st** %user, align 8, !tbaa !22
  tail call void @SRP_user_pwd_free(%struct.SRP_user_pwd_st* noundef %0) #4
  %vb = getelementptr inbounds %struct.srpsrvparm_st, %struct.srpsrvparm_st* %srp_callback_parm, i64 0, i32 1
  %1 = load %struct.SRP_VBASE_st*, %struct.SRP_VBASE_st** %vb, align 8, !tbaa !20
  %login = getelementptr inbounds %struct.srpsrvparm_st, %struct.srpsrvparm_st* %srp_callback_parm, i64 0, i32 0
  %2 = load i8*, i8** %login, align 8, !tbaa !23
  %call = tail call %struct.SRP_user_pwd_st* @SRP_VBASE_get1_by_user(%struct.SRP_VBASE_st* noundef %1, i8* noundef %2) #4
  store %struct.SRP_user_pwd_st* %call, %struct.SRP_user_pwd_st** %user, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.SRP_user_pwd_st* %call, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %info = getelementptr inbounds %struct.SRP_user_pwd_st, %struct.SRP_user_pwd_st* %call, i64 0, i32 5
  %3 = load i8*, i8** %info, align 8, !tbaa !29
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio_s_out, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* noundef %3) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio_s_out, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @SRP_user_pwd_free(%struct.SRP_user_pwd_st* noundef) local_unnamed_addr #1

declare %struct.SRP_user_pwd_st* @SRP_VBASE_get1_by_user(%struct.SRP_VBASE_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @password_callback(i8* noundef, i32 noundef, i32 noundef, %struct.pw_cb_data* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @SSL_get_srp_N(%struct.ssl_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @SSL_get_srp_g(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @BN_print(%struct.bio_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i8* @SRP_check_known_gN_param(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @srp_Verify_N_and_g(%struct.bignum_st* noundef %N, %struct.bignum_st* noundef %g) unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %call1 = tail call %struct.bignum_st* @BN_new() #4
  %call2 = tail call %struct.bignum_st* @BN_new() #4
  %cmp = icmp ne %struct.bignum_st* %g, null
  %cmp3 = icmp ne %struct.bignum_st* %N, null
  %or.cond = and i1 %cmp3, %cmp
  %cmp5 = icmp ne %struct.bignum_ctx* %call, null
  %or.cond29 = select i1 %or.cond, i1 %cmp5, i1 false
  br i1 %or.cond29, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %entry
  %call7 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef nonnull %N) #4
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %call9 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call, %struct.bn_gencb_st* noundef null) #4
  %cmp10 = icmp eq i32 %call9, 1
  %cmp12 = icmp ne %struct.bignum_st* %call1, null
  %or.cond30 = select i1 %cmp10, i1 %cmp12, i1 false
  br i1 %or.cond30, label %land.lhs.true13, label %land.end

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %call14 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %N) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.end, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %call17 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_ctx* noundef nonnull %call, %struct.bn_gencb_st* noundef null) #4
  %cmp18 = icmp eq i32 %call17, 1
  %cmp20 = icmp ne %struct.bignum_st* %call2, null
  %or.cond31 = select i1 %cmp18, i1 %cmp20, i1 false
  br i1 %or.cond31, label %land.lhs.true21, label %land.end

land.lhs.true21:                                  ; preds = %land.lhs.true16
  %call22 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef nonnull %g, %struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %N, %struct.bignum_ctx* noundef nonnull %call) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.end, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %call25 = tail call i32 @BN_add_word(%struct.bignum_st* noundef nonnull %call2, i64 noundef 1) #4
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true24
  %call27 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef nonnull %N) #4
  %cmp28 = icmp eq i32 %call27, 0
  %phi.cast = zext i1 %cmp28 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true24, %land.lhs.true21, %land.lhs.true16, %land.lhs.true13, %land.lhs.true8, %land.lhs.true6, %entry
  %0 = phi i32 [ 0, %land.lhs.true24 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true16 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true6 ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @BN_free(%struct.bignum_st* noundef %call2) #4
  tail call void @BN_free(%struct.bignum_st* noundef %call1) #4
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #4
  ret i32 %0
}

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_check_prime(%struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare i32 @BN_rshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i8* @SSL_get_srp_username(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @SSL_set_srp_server_param(%struct.ssl_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"srp_arg_st", !5, i64 0, !5, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28}
!10 = !{!"int", !6, i64 0}
!11 = !{!9, !10, i64 16}
!12 = !{!9, !10, i64 20}
!13 = !{!9, !10, i64 28}
!14 = !{!9, !10, i64 24}
!15 = !{!9, !5, i64 0}
!16 = !{!17, !5, i64 0}
!17 = !{!"pw_cb_data", !5, i64 0, !5, i64 8}
!18 = !{!17, !5, i64 8}
!19 = !{!6, !6, i64 0}
!20 = !{!21, !5, i64 8}
!21 = !{!"srpsrvparm_st", !5, i64 0, !5, i64 8, !5, i64 16}
!22 = !{!21, !5, i64 16}
!23 = !{!21, !5, i64 0}
!24 = !{!25, !5, i64 32}
!25 = !{!"SRP_user_pwd_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!26 = !{!25, !5, i64 24}
!27 = !{!25, !5, i64 8}
!28 = !{!25, !5, i64 16}
!29 = !{!25, !5, i64 40}
!30 = !{!10, !10, i64 0}
