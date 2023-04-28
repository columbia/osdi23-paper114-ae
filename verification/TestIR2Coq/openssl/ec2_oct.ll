; ModuleID = 'crypto/ec/ec2_oct.c'
source_filename = "crypto/ec/ec2_oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, {}*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/ec/ec2_oct.c\00", align 1
@__func__.ossl_ec_GF2m_simple_set_compressed_coordinates = private unnamed_addr constant [47 x i8] c"ossl_ec_GF2m_simple_set_compressed_coordinates\00", align 1
@__func__.ossl_ec_GF2m_simple_point2oct = private unnamed_addr constant [30 x i8] c"ossl_ec_GF2m_simple_point2oct\00", align 1
@__func__.ossl_ec_GF2m_simple_oct2point = private unnamed_addr constant [30 x i8] c"ossl_ec_GF2m_simple_oct2point\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_set_compressed_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x_, i32 noundef %y_bit, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %cmp1 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ %ctx, %entry ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ null, %entry ]
  %cmp4.not = icmp ne i32 %y_bit, 0
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call8 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp9 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9, label %err80, label %if.end11

if.end11:                                         ; preds = %if.end3
  %arraydecay = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 0
  %call12 = tail call i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %x_, i32* noundef nonnull %arraydecay) #3
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err80, label %if.end14

if.end14:                                         ; preds = %if.end11
  %call15 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call6) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  %b = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  %0 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !4
  %call20 = tail call i32 @BN_GF2m_mod_sqrt_arr(%struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %0, i32* noundef nonnull %arraydecay, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err80, label %if.end75

if.else:                                          ; preds = %if.end14
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !11
  %field_sqr = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %1, i64 0, i32 33
  %2 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr, align 8, !tbaa !12
  %call24 = tail call i32 %2(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err80, label %if.end27

if.end27:                                         ; preds = %if.else
  %3 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !11
  %field_div = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %3, i64 0, i32 34
  %4 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_div, align 8, !tbaa !14
  %b29 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  %5 = load %struct.bignum_st*, %struct.bignum_st** %b29, align 8, !tbaa !4
  %call30 = tail call i32 %4(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef %call5, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err80, label %if.end33

if.end33:                                         ; preds = %if.end27
  %a = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 12
  %6 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !15
  %call34 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %6, %struct.bignum_st* noundef %call5) #3
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err80, label %if.end37

if.end37:                                         ; preds = %if.end33
  %call38 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call5) #3
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err80, label %if.end41

if.end41:                                         ; preds = %if.end37
  %call42 = tail call i32 @ERR_set_mark() #3
  %call45 = tail call i32 @BN_GF2m_mod_solve_quad_arr(%struct.bignum_st* noundef nonnull %call8, %struct.bignum_st* noundef %call5, i32* noundef nonnull %arraydecay, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end58

if.then47:                                        ; preds = %if.end41
  %call48 = tail call i64 @ERR_peek_last_error() #3
  %call49 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call48) #4
  %cmp50 = icmp eq i32 %call49, 3
  br i1 %cmp50, label %land.lhs.true, label %if.else55

land.lhs.true:                                    ; preds = %if.then47
  %call51 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call48) #4
  %cmp52 = icmp eq i32 %call51, 116
  br i1 %cmp52, label %if.then53, label %if.else55

if.then53:                                        ; preds = %land.lhs.true
  %call54 = tail call i32 @ERR_pop_to_mark() #3
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.ossl_ec_GF2m_simple_set_compressed_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 110, i8* noundef null) #3
  br label %err80

if.else55:                                        ; preds = %land.lhs.true, %if.then47
  %call56 = tail call i32 @ERR_clear_last_mark() #3
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.ossl_ec_GF2m_simple_set_compressed_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #3
  br label %err80

if.end58:                                         ; preds = %if.end41
  %call59 = tail call i32 @ERR_clear_last_mark() #3
  %call60 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef nonnull %call8) #3
  %7 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !11
  %field_mul = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %7, i64 0, i32 32
  %8 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul, align 8, !tbaa !16
  %call64 = tail call i32 %8(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef nonnull %call8, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err80, label %if.end67

if.end67:                                         ; preds = %if.end58
  %tobool61.not = icmp eq i32 %call60, 0
  %cmp68.not = xor i1 %cmp4.not, %tobool61.not
  br i1 %cmp68.not, label %if.end75, label %if.then69

if.then69:                                        ; preds = %if.end67
  %call70 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %call6) #3
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err80, label %if.end75

if.end75:                                         ; preds = %if.end67, %if.then69, %if.then17
  %call76 = tail call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call7, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool77.not = icmp ne i32 %call76, 0
  %spec.select = zext i1 %tobool77.not to i32
  br label %err80

err80:                                            ; preds = %if.end75, %if.then53, %if.else55, %if.then69, %if.end58, %if.end37, %if.end33, %if.end27, %if.else, %if.then17, %if.end11, %if.end3
  %ret.0 = phi i32 [ 0, %if.end3 ], [ 0, %if.then17 ], [ 0, %if.then69 ], [ 0, %if.end58 ], [ 0, %if.end37 ], [ 0, %if.end33 ], [ 0, %if.end27 ], [ 0, %if.else ], [ 0, %if.end11 ], [ 0, %if.else55 ], [ 0, %if.then53 ], [ %spec.select, %if.end75 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then, %err80
  %retval.0 = phi i32 [ %ret.0, %err80 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32* noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_GF2m_mod_sqrt_arr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_GF2m_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare i32 @BN_GF2m_mod_solve_quad_arr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i64 @ERR_peek_last_error() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #2 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #2 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @ERR_clear_last_mark() local_unnamed_addr #1

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_ec_GF2m_simple_point2oct(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i32 noundef %form, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp1.not = icmp eq i32 %form, 4
  switch i32 %form, label %if.then [
    i32 6, label %if.end
    i32 4, label %if.end
    i32 2, label %if.end
  ]

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_point2oct, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 104, i8* noundef null) #3
  br label %if.end119

if.end:                                           ; preds = %entry, %entry, %entry
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %if.end
  %cmp5.not = icmp eq i8* %buf, null
  br i1 %cmp5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.then4
  %cmp7 = icmp eq i64 %len, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then6
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_point2oct, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, i8* noundef null) #3
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  store i8 0, i8* %buf, align 1, !tbaa !17
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %group) #3
  %add = add nsw i32 %call12, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %cmp13 = icmp eq i32 %form, 2
  %add15 = add nsw i64 %conv, 1
  %mul = shl nsw i64 %conv, 1
  %add16 = or i64 %mul, 1
  %cond = select i1 %cmp13, i64 %add15, i64 %add16
  %cmp17.not = icmp eq i8* %buf, null
  br i1 %cmp17.not, label %if.end116, label %if.then19

if.then19:                                        ; preds = %if.end11
  %cmp20 = icmp ugt i64 %cond, %len
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_point2oct, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, i8* noundef null) #3
  br label %if.end119

if.end23:                                         ; preds = %if.then19
  %cmp24 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp24, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end23
  %call27 = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %cmp28 = icmp eq %struct.bignum_ctx* %call27, null
  br i1 %cmp28, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end23
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call27, %if.then26 ], [ %ctx, %if.end23 ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call27, %if.then26 ], [ null, %if.end23 ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call33 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call34 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call35 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp36 = icmp eq %struct.bignum_st* %call35, null
  br i1 %cmp36, label %if.then118, label %if.end39

if.end39:                                         ; preds = %if.end32
  %call40 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %call33, %struct.bignum_st* noundef %call34, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then118, label %if.end43

if.end43:                                         ; preds = %if.end39
  %conv44 = trunc i32 %form to i8
  store i8 %conv44, i8* %buf, align 1, !tbaa !17
  br i1 %cmp1.not, label %if.end61, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.end43
  %call49 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call33) #3
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end61

if.then51:                                        ; preds = %land.lhs.true48
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !11
  %field_div = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 34
  %1 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_div, align 8, !tbaa !14
  %call52 = tail call i32 %1(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef nonnull %call35, %struct.bignum_st* noundef %call34, %struct.bignum_st* noundef %call33, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then118, label %if.end55

if.end55:                                         ; preds = %if.then51
  %call56 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef nonnull %call35) #3
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %if.end55
  %2 = load i8, i8* %buf, align 1, !tbaa !17
  %inc = add i8 %2, 1
  store i8 %inc, i8* %buf, align 1, !tbaa !17
  br label %if.end61

if.end61:                                         ; preds = %if.end55, %if.then58, %land.lhs.true48, %if.end43
  %call62 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call33) #3
  %add63 = add nsw i32 %call62, 7
  %div64.neg = sdiv i32 %add63, -8
  %narrow = add nsw i32 %div64.neg, %div
  %cmp66 = icmp ugt i32 %narrow, %div
  br i1 %cmp66, label %if.then118.sink.split, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end61
  %cmp70.not212 = icmp eq i32 %narrow, 0
  br i1 %cmp70.not212, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %sub = sext i32 %narrow to i64
  %min.iters.check = icmp ult i32 %narrow, 32
  br i1 %min.iters.check, label %while.body.preheader239, label %vector.ph

vector.ph:                                        ; preds = %while.body.preheader
  %n.vec = and i64 %sub, -32
  %ind.end = and i64 %sub, 31
  %ind.end220 = or i64 %n.vec, 1
  %3 = add nsw i64 %n.vec, -32
  %4 = lshr exact i64 %3, 5
  %5 = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %5, 3
  %6 = icmp ult i64 %3, 96
  br i1 %6, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %5, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx221 = or i64 %index, 1
  %7 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx221
  %8 = bitcast i8* %7 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %8, align 1, !tbaa !17
  %9 = getelementptr inbounds i8, i8* %7, i64 16
  %10 = bitcast i8* %9 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %10, align 1, !tbaa !17
  %offset.idx221.1 = or i64 %index, 33
  %11 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx221.1
  %12 = bitcast i8* %11 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %12, align 1, !tbaa !17
  %13 = getelementptr inbounds i8, i8* %11, i64 16
  %14 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %14, align 1, !tbaa !17
  %offset.idx221.2 = or i64 %index, 65
  %15 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx221.2
  %16 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %16, align 1, !tbaa !17
  %17 = getelementptr inbounds i8, i8* %15, i64 16
  %18 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %18, align 1, !tbaa !17
  %offset.idx221.3 = or i64 %index, 97
  %19 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx221.3
  %20 = bitcast i8* %19 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %20, align 1, !tbaa !17
  %21 = getelementptr inbounds i8, i8* %19, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %22, align 1, !tbaa !17
  %index.next.3 = add nuw i64 %index, 128
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !18

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx221.epil = or i64 %index.epil, 1
  %23 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx221.epil
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %24, align 1, !tbaa !17
  %25 = getelementptr inbounds i8, i8* %23, i64 16
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %26, align 1, !tbaa !17
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !21

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %sub
  br i1 %cmp.n, label %while.end, label %while.body.preheader239

while.body.preheader239:                          ; preds = %while.body.preheader, %middle.block
  %skip.0214.ph = phi i64 [ %sub, %while.body.preheader ], [ %ind.end, %middle.block ]
  %i.0213.ph = phi i64 [ 1, %while.body.preheader ], [ %ind.end220, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader239, %while.body
  %skip.0214 = phi i64 [ %dec, %while.body ], [ %skip.0214.ph, %while.body.preheader239 ]
  %i.0213 = phi i64 [ %inc72, %while.body ], [ %i.0213.ph, %while.body.preheader239 ]
  %inc72 = add i64 %i.0213, 1
  %arrayidx73 = getelementptr inbounds i8, i8* %buf, i64 %i.0213
  store i8 0, i8* %arrayidx73, align 1, !tbaa !17
  %dec = add i64 %skip.0214, -1
  %cmp70.not = icmp eq i64 %dec, 0
  br i1 %cmp70.not, label %while.end, label %while.body, !llvm.loop !23

while.end:                                        ; preds = %while.body, %middle.block, %while.cond.preheader
  %i.0.lcssa = phi i64 [ 1, %while.cond.preheader ], [ %ind.end220, %middle.block ], [ %inc72, %while.body ]
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %i.0.lcssa
  %call74 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef %call33, i8* noundef nonnull %add.ptr) #3
  %conv75 = sext i32 %call74 to i64
  %add76 = add i64 %i.0.lcssa, %conv75
  %cmp78.not = icmp eq i64 %add76, %add15
  br i1 %cmp78.not, label %if.end81, label %if.then118.sink.split

if.end81:                                         ; preds = %while.end
  %27 = and i32 %form, -3
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %if.then86, label %if.end108

if.then86:                                        ; preds = %if.end81
  %call87 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call34) #3
  %add88 = add nsw i32 %call87, 7
  %div89.neg = sdiv i32 %add88, -8
  %narrow202 = add nsw i32 %div89.neg, %div
  %cmp92 = icmp ugt i32 %narrow202, %div
  br i1 %cmp92, label %if.then118.sink.split, label %while.cond96.preheader

while.cond96.preheader:                           ; preds = %if.then86
  %cmp97.not215 = icmp eq i32 %narrow202, 0
  br i1 %cmp97.not215, label %while.end103, label %while.body99.preheader

while.body99.preheader:                           ; preds = %while.cond96.preheader
  %sub91 = sext i32 %narrow202 to i64
  %min.iters.check225 = icmp ult i32 %narrow202, 32
  br i1 %min.iters.check225, label %while.body99.preheader238, label %vector.ph226

vector.ph226:                                     ; preds = %while.body99.preheader
  %n.vec228 = and i64 %sub91, -32
  %ind.end230 = and i64 %sub91, 31
  %ind.end232 = add nsw i64 %add15, %n.vec228
  %29 = add nsw i64 %n.vec228, -32
  %30 = lshr exact i64 %29, 5
  %31 = add nuw nsw i64 %30, 1
  %xtraiter240 = and i64 %31, 3
  %32 = icmp ult i64 %29, 96
  br i1 %32, label %middle.block222.unr-lcssa, label %vector.ph226.new

vector.ph226.new:                                 ; preds = %vector.ph226
  %unroll_iter243 = and i64 %31, 1152921504606846972
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph226.new
  %index234 = phi i64 [ 0, %vector.ph226.new ], [ %index.next237.3, %vector.body224 ]
  %niter244 = phi i64 [ 0, %vector.ph226.new ], [ %niter244.next.3, %vector.body224 ]
  %offset.idx236 = add i64 %add15, %index234
  %33 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx236
  %34 = bitcast i8* %33 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %34, align 1, !tbaa !17
  %35 = getelementptr inbounds i8, i8* %33, i64 16
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %36, align 1, !tbaa !17
  %index.next237 = or i64 %index234, 32
  %offset.idx236.1 = add i64 %add15, %index.next237
  %37 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx236.1
  %38 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %38, align 1, !tbaa !17
  %39 = getelementptr inbounds i8, i8* %37, i64 16
  %40 = bitcast i8* %39 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %40, align 1, !tbaa !17
  %index.next237.1 = or i64 %index234, 64
  %offset.idx236.2 = add i64 %add15, %index.next237.1
  %41 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx236.2
  %42 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %42, align 1, !tbaa !17
  %43 = getelementptr inbounds i8, i8* %41, i64 16
  %44 = bitcast i8* %43 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %44, align 1, !tbaa !17
  %index.next237.2 = or i64 %index234, 96
  %offset.idx236.3 = add i64 %add15, %index.next237.2
  %45 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx236.3
  %46 = bitcast i8* %45 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %46, align 1, !tbaa !17
  %47 = getelementptr inbounds i8, i8* %45, i64 16
  %48 = bitcast i8* %47 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %48, align 1, !tbaa !17
  %index.next237.3 = add nuw i64 %index234, 128
  %niter244.next.3 = add i64 %niter244, 4
  %niter244.ncmp.3 = icmp eq i64 %niter244.next.3, %unroll_iter243
  br i1 %niter244.ncmp.3, label %middle.block222.unr-lcssa, label %vector.body224, !llvm.loop !25

middle.block222.unr-lcssa:                        ; preds = %vector.body224, %vector.ph226
  %index234.unr = phi i64 [ 0, %vector.ph226 ], [ %index.next237.3, %vector.body224 ]
  %lcmp.mod242.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod242.not, label %middle.block222, label %vector.body224.epil

vector.body224.epil:                              ; preds = %middle.block222.unr-lcssa, %vector.body224.epil
  %index234.epil = phi i64 [ %index.next237.epil, %vector.body224.epil ], [ %index234.unr, %middle.block222.unr-lcssa ]
  %epil.iter241 = phi i64 [ %epil.iter241.next, %vector.body224.epil ], [ 0, %middle.block222.unr-lcssa ]
  %offset.idx236.epil = add i64 %add15, %index234.epil
  %49 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx236.epil
  %50 = bitcast i8* %49 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %50, align 1, !tbaa !17
  %51 = getelementptr inbounds i8, i8* %49, i64 16
  %52 = bitcast i8* %51 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %52, align 1, !tbaa !17
  %index.next237.epil = add nuw i64 %index234.epil, 32
  %epil.iter241.next = add i64 %epil.iter241, 1
  %epil.iter241.cmp.not = icmp eq i64 %epil.iter241.next, %xtraiter240
  br i1 %epil.iter241.cmp.not, label %middle.block222, label %vector.body224.epil, !llvm.loop !26

middle.block222:                                  ; preds = %vector.body224.epil, %middle.block222.unr-lcssa
  %cmp.n233 = icmp eq i64 %n.vec228, %sub91
  br i1 %cmp.n233, label %while.end103, label %while.body99.preheader238

while.body99.preheader238:                        ; preds = %while.body99.preheader, %middle.block222
  %skip.1217.ph = phi i64 [ %sub91, %while.body99.preheader ], [ %ind.end230, %middle.block222 ]
  %i.1216.ph = phi i64 [ %add15, %while.body99.preheader ], [ %ind.end232, %middle.block222 ]
  br label %while.body99

while.body99:                                     ; preds = %while.body99.preheader238, %while.body99
  %skip.1217 = phi i64 [ %dec102, %while.body99 ], [ %skip.1217.ph, %while.body99.preheader238 ]
  %i.1216 = phi i64 [ %inc100, %while.body99 ], [ %i.1216.ph, %while.body99.preheader238 ]
  %inc100 = add i64 %i.1216, 1
  %arrayidx101 = getelementptr inbounds i8, i8* %buf, i64 %i.1216
  store i8 0, i8* %arrayidx101, align 1, !tbaa !17
  %dec102 = add i64 %skip.1217, -1
  %cmp97.not = icmp eq i64 %dec102, 0
  br i1 %cmp97.not, label %while.end103, label %while.body99, !llvm.loop !27

while.end103:                                     ; preds = %while.body99, %middle.block222, %while.cond96.preheader
  %i.1.lcssa = phi i64 [ %add15, %while.cond96.preheader ], [ %ind.end232, %middle.block222 ], [ %inc100, %while.body99 ]
  %add.ptr104 = getelementptr inbounds i8, i8* %buf, i64 %i.1.lcssa
  %call105 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef %call34, i8* noundef nonnull %add.ptr104) #3
  %conv106 = sext i32 %call105 to i64
  %add107 = add i64 %i.1.lcssa, %conv106
  br label %if.end108

if.end108:                                        ; preds = %if.end81, %while.end103
  %i.2 = phi i64 [ %add107, %while.end103 ], [ %add15, %if.end81 ]
  %cmp109.not = icmp eq i64 %i.2, %cond
  br i1 %cmp109.not, label %if.then115, label %if.then118.sink.split

if.then115:                                       ; preds = %if.end108
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx.addr.0) #3
  br label %if.end116

if.end116:                                        ; preds = %if.end11, %if.then115
  %new_ctx.1205 = phi %struct.bignum_ctx* [ %new_ctx.0, %if.then115 ], [ null, %if.end11 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.1205) #3
  br label %cleanup

if.then118.sink.split:                            ; preds = %if.end108, %if.then86, %while.end, %if.end61
  %.sink = phi i32 [ 201, %if.end61 ], [ 211, %while.end ], [ 219, %if.then86 ], [ 231, %if.end108 ]
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_point2oct, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #3
  br label %if.then118

if.then118:                                       ; preds = %if.then118.sink.split, %if.then51, %if.end39, %if.end32
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx.addr.0) #3
  br label %if.end119

if.end119:                                        ; preds = %if.then, %if.then22, %if.then118
  %new_ctx.2211 = phi %struct.bignum_ctx* [ %new_ctx.0, %if.then118 ], [ null, %if.then22 ], [ null, %if.then ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.2211) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.then4, %if.end9, %if.end119, %if.end116, %if.then8
  %retval.0 = phi i64 [ 0, %if.end119 ], [ 0, %if.then8 ], [ %cond, %if.end116 ], [ 1, %if.end9 ], [ 1, %if.then4 ], [ 0, %if.then26 ]
  ret i64 %retval.0
}

declare i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_oct2point(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %buf, align 1, !tbaa !17
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 1
  %and3 = and i32 %conv, 254
  %1 = and i8 %0, -4
  switch i8 %1, label %if.then14 [
    i8 4, label %if.end15
    i8 0, label %if.end15
  ]

if.then14:                                        ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %cleanup

if.end15:                                         ; preds = %if.end, %if.end
  %tobool.not = icmp eq i32 %and, 0
  %2 = and i32 %conv, 251
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end15
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %cmp16 = icmp eq i32 %and3, 0
  br i1 %cmp16, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end22
  %cmp26.not = icmp eq i64 %len, 1
  br i1 %cmp26.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.then25
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %cleanup

if.end29:                                         ; preds = %if.then25
  %call = tail call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point) #3
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %call31 = tail call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %group) #3
  %add = add nsw i32 %call31, 7
  %div = sdiv i32 %add, 8
  %conv32 = sext i32 %div to i64
  %cmp33 = icmp eq i32 %and3, 2
  %add35 = add nsw i64 %conv32, 1
  %mul = shl nsw i64 %conv32, 1
  %add36 = or i64 %mul, 1
  %cond = select i1 %cmp33, i64 %add35, i64 %add36
  %cmp37.not = icmp eq i64 %cond, %len
  br i1 %cmp37.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end30
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %cmp41 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp41, label %if.then43, label %if.end49

if.then43:                                        ; preds = %if.end40
  %call44 = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %cmp45 = icmp eq %struct.bignum_ctx* %call44, null
  br i1 %cmp45, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.then43, %if.end40
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call44, %if.then43 ], [ %ctx, %if.end40 ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call44, %if.then43 ], [ null, %if.end40 ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call50 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call51 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call52 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp53 = icmp eq %struct.bignum_st* %call52, null
  br i1 %cmp53, label %err, label %if.end56

if.end56:                                         ; preds = %if.end49
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 1
  %call58 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %add.ptr, i32 noundef %div, %struct.bignum_st* noundef %call50) #3
  %tobool59.not = icmp eq %struct.bignum_st* %call58, null
  br i1 %tobool59.not, label %err, label %if.end61

if.end61:                                         ; preds = %if.end56
  %call62 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call50) #3
  %cmp63 = icmp sgt i32 %call62, %call31
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end61
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %err

if.end66:                                         ; preds = %if.end61
  br i1 %cmp33, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.end66
  %call70 = tail call i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %call50, i32 noundef %and, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %if.end112

if.else:                                          ; preds = %if.end66
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr, i64 %conv32
  %call77 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %add.ptr75, i32 noundef %div, %struct.bignum_st* noundef %call51) #3
  %tobool78.not = icmp eq %struct.bignum_st* %call77, null
  br i1 %tobool78.not, label %err, label %if.end80

if.end80:                                         ; preds = %if.else
  %call81 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call51) #3
  %cmp82 = icmp sgt i32 %call81, %call31
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end80
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %err

if.end85:                                         ; preds = %if.end80
  %cmp86 = icmp eq i32 %and3, 6
  br i1 %cmp86, label %if.then88, label %if.end107

if.then88:                                        ; preds = %if.end85
  %call89 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call50) #3
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.else96, label %if.then91

if.then91:                                        ; preds = %if.then88
  br i1 %tobool.not, label %if.end107, label %if.then94

if.then94:                                        ; preds = %if.then91
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %err

if.else96:                                        ; preds = %if.then88
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %4 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !11
  %field_div = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %4, i64 0, i32 34
  %5 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_div, align 8, !tbaa !14
  %call97 = tail call i32 %5(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef nonnull %call52, %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call50, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %if.end100

if.end100:                                        ; preds = %if.else96
  %call101 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef nonnull %call52) #3
  %cmp102.not = icmp eq i32 %and, %call101
  br i1 %cmp102.not, label %if.end107, label %if.then104

if.then104:                                       ; preds = %if.end100
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GF2m_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %err

if.end107:                                        ; preds = %if.then91, %if.end100, %if.end85
  %call108 = tail call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %call50, %struct.bignum_st* noundef %call51, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %if.end112

if.end112:                                        ; preds = %if.end107, %if.then69
  br label %err

err:                                              ; preds = %if.end107, %if.else96, %if.else, %if.then69, %if.end56, %if.end49, %if.end112, %if.then104, %if.then94, %if.then84, %if.then65
  %ret.0 = phi i32 [ 0, %if.end49 ], [ 0, %if.then65 ], [ 1, %if.end112 ], [ 0, %if.then69 ], [ 0, %if.then84 ], [ 0, %if.then94 ], [ 0, %if.end107 ], [ 0, %if.then104 ], [ 0, %if.else96 ], [ 0, %if.else ], [ 0, %if.end56 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %err, %if.then39, %if.end29, %if.then28, %if.then21, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then14 ], [ 0, %if.then21 ], [ 0, %if.then28 ], [ %call, %if.end29 ], [ 0, %if.then39 ], [ %ret.0, %err ], [ 0, %if.then43 ]
  ret i32 %retval.0
}

declare i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 104}
!5 = !{!"ec_group_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !7, i64 44, !6, i64 48, !10, i64 56, !6, i64 64, !7, i64 72, !6, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !7, i64 152, !7, i64 160, !6, i64 168, !6, i64 176}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 0}
!12 = !{!13, !6, i64 256}
!13 = !{!"ec_method_st", !9, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432}
!14 = !{!13, !6, i64 264}
!15 = !{!5, !6, i64 96}
!16 = !{!13, !6, i64 248}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !19, !24, !20}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !19, !20}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !19, !24, !20}
