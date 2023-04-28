; ModuleID = 'crypto/ec/ecdh_ossl.c'
source_filename = "crypto/ec/ecdh_ossl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, {}*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_st = type opaque
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, {}*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/ec/ecdh_ossl.c\00", align 1
@__func__.ossl_ecdh_compute_key = private unnamed_addr constant [22 x i8] c"ossl_ecdh_compute_key\00", align 1
@__func__.ossl_ecdh_simple_compute_key = private unnamed_addr constant [29 x i8] c"ossl_ecdh_simple_compute_key\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ecdh_compute_key(i8** noundef %psec, i64* noundef %pseclen, %struct.ec_point_st* noundef %pub_key, %struct.ec_key_st* noundef %ecdh) local_unnamed_addr #0 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %ecdh, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %0, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !12
  %ecdh_compute_key = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %1, i64 0, i32 47
  %ecdh_compute_key1 = bitcast {}** %ecdh_compute_key to i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)**
  %2 = load i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)** %ecdh_compute_key1, align 8, !tbaa !14
  %cmp = icmp eq i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_ecdh_compute_key, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 160, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 %2(i8** noundef %psec, i64* noundef %pseclen, %struct.ec_point_st* noundef %pub_key, %struct.ec_key_st* noundef nonnull %ecdh) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ecdh_simple_compute_key(i8** nocapture noundef writeonly %pout, i64* nocapture noundef writeonly %poutlen, %struct.ec_point_st* noundef %pub_key, %struct.ec_key_st* noundef %ecdh) local_unnamed_addr #0 {
entry:
  %libctx = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %ecdh, i64 0, i32 12
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !16
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #3
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call) #3
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #3
  %cmp2 = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdh_simple_compute_key, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #3
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef nonnull %ecdh) #3
  %cmp6 = icmp eq %struct.bignum_st* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdh_simple_compute_key, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 125, i8* noundef null) #3
  br label %err

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef nonnull %ecdh) #3
  %call10 = tail call i32 @EC_KEY_get_flags(%struct.ec_key_st* noundef nonnull %ecdh) #3
  %and = and i32 %call10, 4096
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call12 = tail call i32 @EC_GROUP_get_cofactor(%struct.ec_group_st* noundef %call9, %struct.bignum_st* noundef nonnull %call1, %struct.bignum_ctx* noundef null) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then11
  %call14 = tail call i32 @BN_mul(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %call5, %struct.bignum_ctx* noundef nonnull %call) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %lor.lhs.false, %if.then11
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdh_simple_compute_key, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #3
  br label %err

if.end18:                                         ; preds = %lor.lhs.false, %if.end8
  %priv_key.0 = phi %struct.bignum_st* [ %call5, %if.end8 ], [ %call1, %lor.lhs.false ]
  %call19 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call9) #3
  %cmp20 = icmp eq %struct.ec_point_st* %call19, null
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdh_simple_compute_key, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #3
  br label %err

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call9, %struct.ec_point_st* noundef nonnull %call19, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %pub_key, %struct.bignum_st* noundef nonnull %priv_key.0, %struct.bignum_ctx* noundef nonnull %call) #3
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdh_simple_compute_key, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 155, i8* noundef null) #3
  br label %err

if.end26:                                         ; preds = %if.end22
  %call27 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call9, %struct.ec_point_st* noundef nonnull %call19, %struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef nonnull %call) #3
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdh_simple_compute_key, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 155, i8* noundef null) #3
  br label %err

if.end30:                                         ; preds = %if.end26
  %call31 = tail call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %call9) #3
  %add = add nsw i32 %call31, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %call32 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call1) #3
  %add33 = add nsw i32 %call32, 7
  %div34 = sdiv i32 %add33, 8
  %conv35 = sext i32 %div34 to i64
  %cmp36 = icmp ult i32 %div, %div34
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end30
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdh_simple_compute_key, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #3
  br label %err

if.end39:                                         ; preds = %if.end30
  %call40 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 121) #3
  %cmp41 = icmp eq i8* %call40, null
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdh_simple_compute_key, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #3
  br label %err

if.end44:                                         ; preds = %if.end39
  %sub = sub nsw i64 %conv, %conv35
  %call45 = tail call i8* @memset(i8* noundef nonnull %call40, i32 noundef 0, i64 noundef %sub) #3
  %add.ptr = getelementptr inbounds i8, i8* %call40, i64 %conv
  %idx.neg = sub nsw i64 0, %conv35
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %call47 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef nonnull %call1, i8* noundef nonnull %add.ptr46) #3
  %cmp49.not = icmp eq i32 %div34, %call47
  br i1 %cmp49.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end44
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecdh_simple_compute_key, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #3
  br label %err

if.end52:                                         ; preds = %if.end44
  store i8* %call40, i8** %pout, align 8, !tbaa !17
  store i64 %conv, i64* %poutlen, align 8, !tbaa !18
  br label %err

err:                                              ; preds = %entry, %if.end52, %if.then51, %if.then43, %if.then38, %if.then29, %if.then25, %if.then21, %if.then16, %if.then7, %if.then3
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then3 ], [ 0, %if.then7 ], [ 0, %if.then21 ], [ 0, %if.then38 ], [ 0, %if.then43 ], [ 0, %if.then51 ], [ 1, %if.end52 ], [ 0, %if.then29 ], [ 0, %if.then25 ], [ 0, %if.then16 ]
  %x.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.then3 ], [ %call1, %if.then7 ], [ %call1, %if.then21 ], [ %call1, %if.then38 ], [ %call1, %if.then43 ], [ %call1, %if.then51 ], [ %call1, %if.end52 ], [ %call1, %if.then29 ], [ %call1, %if.then25 ], [ %call1, %if.then16 ]
  %tmp.0 = phi %struct.ec_point_st* [ null, %entry ], [ null, %if.then3 ], [ null, %if.then7 ], [ null, %if.then21 ], [ %call19, %if.then38 ], [ %call19, %if.then43 ], [ %call19, %if.then51 ], [ %call19, %if.end52 ], [ %call19, %if.then29 ], [ %call19, %if.then25 ], [ null, %if.then16 ]
  %buf.0 = phi i8* [ null, %entry ], [ null, %if.then3 ], [ null, %if.then7 ], [ null, %if.then21 ], [ null, %if.then38 ], [ null, %if.then43 ], [ %call40, %if.then51 ], [ null, %if.end52 ], [ null, %if.then29 ], [ null, %if.then25 ], [ null, %if.then16 ]
  tail call void @BN_clear(%struct.bignum_st* noundef %x.0) #3
  tail call void @EC_POINT_clear_free(%struct.ec_point_st* noundef %tmp.0) #3
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #3
  tail call void @CRYPTO_free(i8* noundef %buf.0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 144) #3
  ret i32 %ret.0
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare i32 @EC_KEY_get_flags(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_cofactor(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @BN_clear(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @EC_POINT_clear_free(%struct.ec_point_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"ec_key_st", !6, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !9, i64 48, !7, i64 52, !7, i64 56, !9, i64 60, !10, i64 64, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !6, i64 0}
!13 = !{!"ec_group_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !7, i64 44, !6, i64 48, !11, i64 56, !6, i64 64, !7, i64 72, !6, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !7, i64 152, !7, i64 160, !6, i64 168, !6, i64 176}
!14 = !{!15, !6, i64 368}
!15 = !{!"ec_method_st", !9, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432}
!16 = !{!5, !6, i64 88}
!17 = !{!6, !6, i64 0}
!18 = !{!11, !11, i64 0}
