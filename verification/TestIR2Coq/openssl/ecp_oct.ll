; ModuleID = 'crypto/ec/ecp_oct.c'
source_filename = "crypto/ec/ecp_oct.c"
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

@.str = private unnamed_addr constant [20 x i8] c"crypto/ec/ecp_oct.c\00", align 1
@__func__.ossl_ec_GFp_simple_set_compressed_coordinates = private unnamed_addr constant [46 x i8] c"ossl_ec_GFp_simple_set_compressed_coordinates\00", align 1
@__func__.ossl_ec_GFp_simple_point2oct = private unnamed_addr constant [29 x i8] c"ossl_ec_GFp_simple_point2oct\00", align 1
@__func__.ossl_ec_GFp_simple_oct2point = private unnamed_addr constant [29 x i8] c"ossl_ec_GFp_simple_oct2point\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_simple_set_compressed_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x_, i32 noundef %y_bit, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 21
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #3
  %cmp1 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp1, label %cleanup166, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ null, %entry ]
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ %ctx, %entry ]
  %cmp4 = icmp ne i32 %y_bit, 0
  %conv = zext i1 %cmp4 to i32
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call8 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp9 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9, label %err165, label %if.end12

if.end12:                                         ; preds = %if.end3
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %1 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call13 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %x_, %struct.bignum_st* noundef %1, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err165, label %if.end15

if.end15:                                         ; preds = %if.end12
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %2 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !12
  %field_decode = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %2, i64 0, i32 37
  %3 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_decode, align 8, !tbaa !13
  %cmp16 = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %3, null
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  %field_sqr = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %2, i64 0, i32 33
  %4 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr, align 8, !tbaa !15
  %call20 = tail call i32 %4(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %x_, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err165, label %if.end23

if.end23:                                         ; preds = %if.then18
  %5 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !12
  %field_mul = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %5, i64 0, i32 32
  %6 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul, align 8, !tbaa !16
  %call25 = tail call i32 %6(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %x_, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err165, label %if.end39

if.else:                                          ; preds = %if.end15
  %7 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call30 = tail call i32 @BN_mod_sqr(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %x_, %struct.bignum_st* noundef %7, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err165, label %if.end33

if.end33:                                         ; preds = %if.else
  %8 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call35 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %x_, %struct.bignum_st* noundef %8, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err165, label %if.end39

if.end39:                                         ; preds = %if.end33, %if.end23
  %a_is_minus3 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 14
  %9 = load i32, i32* %a_is_minus3, align 8, !tbaa !17
  %tobool40.not = icmp eq i32 %9, 0
  br i1 %tobool40.not, label %if.else57, label %if.then41

if.then41:                                        ; preds = %if.end39
  %10 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call43 = tail call i32 @BN_mod_lshift1_quick(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %10) #3
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err165, label %if.end46

if.end46:                                         ; preds = %if.then41
  %11 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call48 = tail call i32 @BN_mod_add_quick(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %11) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err165, label %if.end51

if.end51:                                         ; preds = %if.end46
  %12 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call53 = tail call i32 @BN_mod_sub_quick(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %12) #3
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err165, label %if.end87

if.else57:                                        ; preds = %if.end39
  %13 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !12
  %field_decode59 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %13, i64 0, i32 37
  %14 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_decode59, align 8, !tbaa !13
  %tobool60.not = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %14, null
  br i1 %tobool60.not, label %if.else73, label %if.then61

if.then61:                                        ; preds = %if.else57
  %a = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 12
  %15 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !18
  %call64 = tail call i32 %14(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %15, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err165, label %if.end67

if.end67:                                         ; preds = %if.then61
  %16 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call69 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %16, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err165, label %if.end81

if.else73:                                        ; preds = %if.else57
  %field_mul75 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %13, i64 0, i32 32
  %17 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul75, align 8, !tbaa !16
  %a76 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 12
  %18 = load %struct.bignum_st*, %struct.bignum_st** %a76, align 8, !tbaa !18
  %call77 = tail call i32 %17(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %18, %struct.bignum_st* noundef %call7, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err165, label %if.end81

if.end81:                                         ; preds = %if.else73, %if.end67
  %19 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call83 = tail call i32 @BN_mod_add_quick(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %19) #3
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err165, label %if.end87

if.end87:                                         ; preds = %if.end81, %if.end51
  %20 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !12
  %field_decode89 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %20, i64 0, i32 37
  %21 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_decode89, align 8, !tbaa !13
  %tobool90.not = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %21, null
  %b104 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  %22 = load %struct.bignum_st*, %struct.bignum_st** %b104, align 8, !tbaa !19
  br i1 %tobool90.not, label %if.else103, label %if.then91

if.then91:                                        ; preds = %if.end87
  %call94 = tail call i32 %21(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %22, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err165, label %if.end97

if.end97:                                         ; preds = %if.then91
  %23 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call99 = tail call i32 @BN_mod_add_quick(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %23) #3
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err165, label %if.end110

if.else103:                                       ; preds = %if.end87
  %24 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call106 = tail call i32 @BN_mod_add_quick(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %22, %struct.bignum_st* noundef %24) #3
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err165, label %if.end110

if.end110:                                        ; preds = %if.else103, %if.end97
  %call111 = tail call i32 @ERR_set_mark() #3
  %25 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call113 = tail call %struct.bignum_st* @BN_mod_sqrt(%struct.bignum_st* noundef nonnull %call8, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %25, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool114.not = icmp eq %struct.bignum_st* %call113, null
  br i1 %tobool114.not, label %if.then115, label %if.end128

if.then115:                                       ; preds = %if.end110
  %call116 = tail call i64 @ERR_peek_last_error() #3
  %call117 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call116) #4
  %cmp118 = icmp eq i32 %call117, 3
  br i1 %cmp118, label %land.lhs.true, label %if.else125

land.lhs.true:                                    ; preds = %if.then115
  %call120 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call116) #4
  %cmp121 = icmp eq i32 %call120, 111
  br i1 %cmp121, label %if.then123, label %if.else125

if.then123:                                       ; preds = %land.lhs.true
  %call124 = tail call i32 @ERR_pop_to_mark() #3
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.ossl_ec_GFp_simple_set_compressed_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 110, i8* noundef null) #3
  br label %err165

if.else125:                                       ; preds = %land.lhs.true, %if.then115
  %call126 = tail call i32 @ERR_clear_last_mark() #3
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.ossl_ec_GFp_simple_set_compressed_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #3
  br label %err165

if.end128:                                        ; preds = %if.end110
  %call129 = tail call i32 @ERR_clear_last_mark() #3
  %call130 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef nonnull %call8) #3
  %cmp131.not = icmp eq i32 %call130, %conv
  br i1 %cmp131.not, label %if.end154, label %if.then133

if.then133:                                       ; preds = %if.end128
  %call134 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call8) #3
  %tobool135.not = icmp eq i32 %call134, 0
  %26 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  br i1 %tobool135.not, label %if.end148, label %if.then136

if.then136:                                       ; preds = %if.then133
  %call138 = tail call i32 @BN_kronecker(%struct.bignum_st* noundef %call7, %struct.bignum_st* noundef %26, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  switch i32 %call138, label %if.else146 [
    i32 -2, label %err165
    i32 1, label %if.then145
  ]

if.then145:                                       ; preds = %if.then136
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.ossl_ec_GFp_simple_set_compressed_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 109, i8* noundef null) #3
  br label %err165

if.else146:                                       ; preds = %if.then136
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.ossl_ec_GFp_simple_set_compressed_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 110, i8* noundef null) #3
  br label %err165

if.end148:                                        ; preds = %if.then133
  %call150 = tail call i32 @BN_usub(%struct.bignum_st* noundef nonnull %call8, %struct.bignum_st* noundef %26, %struct.bignum_st* noundef nonnull %call8) #3
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %err165, label %if.end154

if.end154:                                        ; preds = %if.end148, %if.end128
  %call155 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef nonnull %call8) #3
  %cmp156.not = icmp eq i32 %call155, %conv
  br i1 %cmp156.not, label %if.end159, label %if.then158

if.then158:                                       ; preds = %if.end154
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.ossl_ec_GFp_simple_set_compressed_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #3
  br label %err165

if.end159:                                        ; preds = %if.end154
  %call160 = tail call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %call7, %struct.bignum_st* noundef nonnull %call8, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool161.not = icmp ne i32 %call160, 0
  %spec.select = zext i1 %tobool161.not to i32
  br label %err165

err165:                                           ; preds = %if.end159, %if.then136, %if.else146, %if.then145, %if.then123, %if.else125, %if.end148, %if.else103, %if.end97, %if.then91, %if.end81, %if.else73, %if.end67, %if.then61, %if.end51, %if.end46, %if.then41, %if.end33, %if.else, %if.end23, %if.then18, %if.end12, %if.end3, %if.then158
  %ret.0 = phi i32 [ 0, %if.end3 ], [ 0, %if.then158 ], [ 0, %if.end148 ], [ 0, %if.end97 ], [ 0, %if.then91 ], [ 0, %if.else103 ], [ 0, %if.end51 ], [ 0, %if.end46 ], [ 0, %if.then41 ], [ 0, %if.end81 ], [ 0, %if.end67 ], [ 0, %if.then61 ], [ 0, %if.else73 ], [ 0, %if.end23 ], [ 0, %if.then18 ], [ 0, %if.end33 ], [ 0, %if.else ], [ 0, %if.end12 ], [ 0, %if.else125 ], [ 0, %if.then123 ], [ 0, %if.then145 ], [ 0, %if.else146 ], [ 0, %if.then136 ], [ %spec.select, %if.end159 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #3
  br label %cleanup166

cleanup166:                                       ; preds = %if.then, %err165
  %retval.0 = phi i32 [ %ret.0, %err165 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_nnmod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mod_sqr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mod_lshift1_quick(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_mod_add_quick(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_mod_sub_quick(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare %struct.bignum_st* @BN_mod_sqrt(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

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

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_kronecker(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_usub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_ec_GFp_simple_point2oct(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i32 noundef %form, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  switch i32 %form, label %if.then [
    i32 6, label %if.end
    i32 4, label %if.end
    i32 2, label %if.end
  ]

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_point2oct, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 104, i8* noundef null) #3
  br label %if.end114

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
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_point2oct, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, i8* noundef null) #3
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  store i8 0, i8* %buf, align 1, !tbaa !20
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call12 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #3
  %add = add nsw i32 %call12, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %cmp13 = icmp eq i32 %form, 2
  %add15 = add nsw i64 %conv, 1
  %mul = shl nsw i64 %conv, 1
  %add16 = or i64 %mul, 1
  %cond = select i1 %cmp13, i64 %add15, i64 %add16
  %cmp17.not = icmp eq i8* %buf, null
  br i1 %cmp17.not, label %if.end111, label %if.then19

if.then19:                                        ; preds = %if.end11
  %cmp20 = icmp ugt i64 %cond, %len
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_point2oct, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, i8* noundef null) #3
  br label %if.end114

if.end23:                                         ; preds = %if.then19
  %cmp24 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp24, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end23
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 21
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %call27 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %1) #3
  %cmp28 = icmp eq %struct.bignum_ctx* %call27, null
  br i1 %cmp28, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end23
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call27, %if.then26 ], [ null, %if.end23 ]
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call27, %if.then26 ], [ %ctx, %if.end23 ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call33 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call34 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp35 = icmp eq %struct.bignum_st* %call34, null
  br i1 %cmp35, label %if.then113, label %if.end38

if.end38:                                         ; preds = %if.end32
  %call39 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %call33, %struct.bignum_st* noundef nonnull %call34, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then113, label %if.end42

if.end42:                                         ; preds = %if.end38
  %2 = and i32 %form, -5
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %land.lhs.true47, label %if.end56

land.lhs.true47:                                  ; preds = %if.end42
  %call48 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef nonnull %call34) #3
  %tobool49.not = icmp ne i32 %call48, 0
  %add51 = zext i1 %tobool49.not to i32
  %spec.select = add nuw nsw i32 %add51, %form
  br label %if.end56

if.end56:                                         ; preds = %land.lhs.true47, %if.end42
  %storemerge.in = phi i32 [ %form, %if.end42 ], [ %spec.select, %land.lhs.true47 ]
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, i8* %buf, align 1, !tbaa !20
  %call57 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call33) #3
  %add58 = add nsw i32 %call57, 7
  %div59.neg = sdiv i32 %add58, -8
  %narrow = add nsw i32 %div59.neg, %div
  %cmp61 = icmp ugt i32 %narrow, %div
  br i1 %cmp61, label %if.then113.sink.split, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end56
  %cmp65.not202 = icmp eq i32 %narrow, 0
  br i1 %cmp65.not202, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %sub = sext i32 %narrow to i64
  %min.iters.check = icmp ult i32 %narrow, 32
  br i1 %min.iters.check, label %while.body.preheader229, label %vector.ph

vector.ph:                                        ; preds = %while.body.preheader
  %n.vec = and i64 %sub, -32
  %ind.end = and i64 %sub, 31
  %ind.end210 = or i64 %n.vec, 1
  %4 = add nsw i64 %n.vec, -32
  %5 = lshr exact i64 %4, 5
  %6 = add nuw nsw i64 %5, 1
  %xtraiter = and i64 %6, 3
  %7 = icmp ult i64 %4, 96
  br i1 %7, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %6, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx211 = or i64 %index, 1
  %8 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx211
  %9 = bitcast i8* %8 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %9, align 1, !tbaa !20
  %10 = getelementptr inbounds i8, i8* %8, i64 16
  %11 = bitcast i8* %10 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %11, align 1, !tbaa !20
  %offset.idx211.1 = or i64 %index, 33
  %12 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx211.1
  %13 = bitcast i8* %12 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %13, align 1, !tbaa !20
  %14 = getelementptr inbounds i8, i8* %12, i64 16
  %15 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %15, align 1, !tbaa !20
  %offset.idx211.2 = or i64 %index, 65
  %16 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx211.2
  %17 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %17, align 1, !tbaa !20
  %18 = getelementptr inbounds i8, i8* %16, i64 16
  %19 = bitcast i8* %18 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %19, align 1, !tbaa !20
  %offset.idx211.3 = or i64 %index, 97
  %20 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx211.3
  %21 = bitcast i8* %20 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %21, align 1, !tbaa !20
  %22 = getelementptr inbounds i8, i8* %20, i64 16
  %23 = bitcast i8* %22 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %23, align 1, !tbaa !20
  %index.next.3 = add nuw i64 %index, 128
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !21

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx211.epil = or i64 %index.epil, 1
  %24 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx211.epil
  %25 = bitcast i8* %24 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %25, align 1, !tbaa !20
  %26 = getelementptr inbounds i8, i8* %24, i64 16
  %27 = bitcast i8* %26 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %27, align 1, !tbaa !20
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !24

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %sub
  br i1 %cmp.n, label %while.end, label %while.body.preheader229

while.body.preheader229:                          ; preds = %while.body.preheader, %middle.block
  %skip.0204.ph = phi i64 [ %sub, %while.body.preheader ], [ %ind.end, %middle.block ]
  %i.0203.ph = phi i64 [ 1, %while.body.preheader ], [ %ind.end210, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader229, %while.body
  %skip.0204 = phi i64 [ %dec, %while.body ], [ %skip.0204.ph, %while.body.preheader229 ]
  %i.0203 = phi i64 [ %inc, %while.body ], [ %i.0203.ph, %while.body.preheader229 ]
  %inc = add i64 %i.0203, 1
  %arrayidx67 = getelementptr inbounds i8, i8* %buf, i64 %i.0203
  store i8 0, i8* %arrayidx67, align 1, !tbaa !20
  %dec = add i64 %skip.0204, -1
  %cmp65.not = icmp eq i64 %dec, 0
  br i1 %cmp65.not, label %while.end, label %while.body, !llvm.loop !26

while.end:                                        ; preds = %while.body, %middle.block, %while.cond.preheader
  %i.0.lcssa = phi i64 [ 1, %while.cond.preheader ], [ %ind.end210, %middle.block ], [ %inc, %while.body ]
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %i.0.lcssa
  %call68 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef %call33, i8* noundef nonnull %add.ptr) #3
  %conv69 = sext i32 %call68 to i64
  %add70 = add i64 %i.0.lcssa, %conv69
  %cmp72.not = icmp eq i64 %add70, %add15
  br i1 %cmp72.not, label %if.end75, label %if.then113.sink.split

if.end75:                                         ; preds = %while.end
  %28 = and i32 %form, -3
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %if.then81, label %if.end103

if.then81:                                        ; preds = %if.end75
  %call82 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call34) #3
  %add83 = add nsw i32 %call82, 7
  %div84.neg = sdiv i32 %add83, -8
  %narrow192 = add nsw i32 %div84.neg, %div
  %cmp87 = icmp ugt i32 %narrow192, %div
  br i1 %cmp87, label %if.then113.sink.split, label %while.cond91.preheader

while.cond91.preheader:                           ; preds = %if.then81
  %cmp92.not205 = icmp eq i32 %narrow192, 0
  br i1 %cmp92.not205, label %while.end98, label %while.body94.preheader

while.body94.preheader:                           ; preds = %while.cond91.preheader
  %sub86 = sext i32 %narrow192 to i64
  %min.iters.check215 = icmp ult i32 %narrow192, 32
  br i1 %min.iters.check215, label %while.body94.preheader228, label %vector.ph216

vector.ph216:                                     ; preds = %while.body94.preheader
  %n.vec218 = and i64 %sub86, -32
  %ind.end220 = and i64 %sub86, 31
  %ind.end222 = add nsw i64 %add15, %n.vec218
  %30 = add nsw i64 %n.vec218, -32
  %31 = lshr exact i64 %30, 5
  %32 = add nuw nsw i64 %31, 1
  %xtraiter230 = and i64 %32, 3
  %33 = icmp ult i64 %30, 96
  br i1 %33, label %middle.block212.unr-lcssa, label %vector.ph216.new

vector.ph216.new:                                 ; preds = %vector.ph216
  %unroll_iter233 = and i64 %32, 1152921504606846972
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph216.new
  %index224 = phi i64 [ 0, %vector.ph216.new ], [ %index.next227.3, %vector.body214 ]
  %niter234 = phi i64 [ 0, %vector.ph216.new ], [ %niter234.next.3, %vector.body214 ]
  %offset.idx226 = add i64 %add15, %index224
  %34 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx226
  %35 = bitcast i8* %34 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %35, align 1, !tbaa !20
  %36 = getelementptr inbounds i8, i8* %34, i64 16
  %37 = bitcast i8* %36 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %37, align 1, !tbaa !20
  %index.next227 = or i64 %index224, 32
  %offset.idx226.1 = add i64 %add15, %index.next227
  %38 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx226.1
  %39 = bitcast i8* %38 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %39, align 1, !tbaa !20
  %40 = getelementptr inbounds i8, i8* %38, i64 16
  %41 = bitcast i8* %40 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %41, align 1, !tbaa !20
  %index.next227.1 = or i64 %index224, 64
  %offset.idx226.2 = add i64 %add15, %index.next227.1
  %42 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx226.2
  %43 = bitcast i8* %42 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %43, align 1, !tbaa !20
  %44 = getelementptr inbounds i8, i8* %42, i64 16
  %45 = bitcast i8* %44 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %45, align 1, !tbaa !20
  %index.next227.2 = or i64 %index224, 96
  %offset.idx226.3 = add i64 %add15, %index.next227.2
  %46 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx226.3
  %47 = bitcast i8* %46 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %47, align 1, !tbaa !20
  %48 = getelementptr inbounds i8, i8* %46, i64 16
  %49 = bitcast i8* %48 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %49, align 1, !tbaa !20
  %index.next227.3 = add nuw i64 %index224, 128
  %niter234.next.3 = add i64 %niter234, 4
  %niter234.ncmp.3 = icmp eq i64 %niter234.next.3, %unroll_iter233
  br i1 %niter234.ncmp.3, label %middle.block212.unr-lcssa, label %vector.body214, !llvm.loop !28

middle.block212.unr-lcssa:                        ; preds = %vector.body214, %vector.ph216
  %index224.unr = phi i64 [ 0, %vector.ph216 ], [ %index.next227.3, %vector.body214 ]
  %lcmp.mod232.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod232.not, label %middle.block212, label %vector.body214.epil

vector.body214.epil:                              ; preds = %middle.block212.unr-lcssa, %vector.body214.epil
  %index224.epil = phi i64 [ %index.next227.epil, %vector.body214.epil ], [ %index224.unr, %middle.block212.unr-lcssa ]
  %epil.iter231 = phi i64 [ %epil.iter231.next, %vector.body214.epil ], [ 0, %middle.block212.unr-lcssa ]
  %offset.idx226.epil = add i64 %add15, %index224.epil
  %50 = getelementptr inbounds i8, i8* %buf, i64 %offset.idx226.epil
  %51 = bitcast i8* %50 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %51, align 1, !tbaa !20
  %52 = getelementptr inbounds i8, i8* %50, i64 16
  %53 = bitcast i8* %52 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %53, align 1, !tbaa !20
  %index.next227.epil = add nuw i64 %index224.epil, 32
  %epil.iter231.next = add i64 %epil.iter231, 1
  %epil.iter231.cmp.not = icmp eq i64 %epil.iter231.next, %xtraiter230
  br i1 %epil.iter231.cmp.not, label %middle.block212, label %vector.body214.epil, !llvm.loop !29

middle.block212:                                  ; preds = %vector.body214.epil, %middle.block212.unr-lcssa
  %cmp.n223 = icmp eq i64 %n.vec218, %sub86
  br i1 %cmp.n223, label %while.end98, label %while.body94.preheader228

while.body94.preheader228:                        ; preds = %while.body94.preheader, %middle.block212
  %skip.1207.ph = phi i64 [ %sub86, %while.body94.preheader ], [ %ind.end220, %middle.block212 ]
  %i.1206.ph = phi i64 [ %add15, %while.body94.preheader ], [ %ind.end222, %middle.block212 ]
  br label %while.body94

while.body94:                                     ; preds = %while.body94.preheader228, %while.body94
  %skip.1207 = phi i64 [ %dec97, %while.body94 ], [ %skip.1207.ph, %while.body94.preheader228 ]
  %i.1206 = phi i64 [ %inc95, %while.body94 ], [ %i.1206.ph, %while.body94.preheader228 ]
  %inc95 = add i64 %i.1206, 1
  %arrayidx96 = getelementptr inbounds i8, i8* %buf, i64 %i.1206
  store i8 0, i8* %arrayidx96, align 1, !tbaa !20
  %dec97 = add i64 %skip.1207, -1
  %cmp92.not = icmp eq i64 %dec97, 0
  br i1 %cmp92.not, label %while.end98, label %while.body94, !llvm.loop !30

while.end98:                                      ; preds = %while.body94, %middle.block212, %while.cond91.preheader
  %i.1.lcssa = phi i64 [ %add15, %while.cond91.preheader ], [ %ind.end222, %middle.block212 ], [ %inc95, %while.body94 ]
  %add.ptr99 = getelementptr inbounds i8, i8* %buf, i64 %i.1.lcssa
  %call100 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef nonnull %call34, i8* noundef nonnull %add.ptr99) #3
  %conv101 = sext i32 %call100 to i64
  %add102 = add i64 %i.1.lcssa, %conv101
  br label %if.end103

if.end103:                                        ; preds = %if.end75, %while.end98
  %i.2 = phi i64 [ %add102, %while.end98 ], [ %add15, %if.end75 ]
  %cmp104.not = icmp eq i64 %i.2, %cond
  br i1 %cmp104.not, label %if.then110, label %if.then113.sink.split

if.then110:                                       ; preds = %if.end103
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx.addr.0) #3
  br label %if.end111

if.end111:                                        ; preds = %if.end11, %if.then110
  %new_ctx.1195 = phi %struct.bignum_ctx* [ %new_ctx.0, %if.then110 ], [ null, %if.end11 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.1195) #3
  br label %cleanup

if.then113.sink.split:                            ; preds = %if.end103, %if.then81, %while.end, %if.end56
  %.sink = phi i32 [ 227, %if.end56 ], [ 237, %while.end ], [ 245, %if.then81 ], [ 257, %if.end103 ]
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_point2oct, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #3
  br label %if.then113

if.then113:                                       ; preds = %if.then113.sink.split, %if.end38, %if.end32
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx.addr.0) #3
  br label %if.end114

if.end114:                                        ; preds = %if.then, %if.then22, %if.then113
  %new_ctx.2200 = phi %struct.bignum_ctx* [ %new_ctx.0, %if.then113 ], [ null, %if.then22 ], [ null, %if.then ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.2200) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.then4, %if.end9, %if.end114, %if.end111, %if.then8
  %retval.0 = phi i64 [ 0, %if.end114 ], [ 0, %if.then8 ], [ %cond, %if.end111 ], [ 1, %if.end9 ], [ 1, %if.then4 ], [ 0, %if.then26 ]
  ret i64 %retval.0
}

declare i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_simple_oct2point(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %buf, align 1, !tbaa !20
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 1
  %and1 = and i32 %conv, 254
  %1 = and i8 %0, -4
  switch i8 %1, label %if.then12 [
    i8 4, label %if.end13
    i8 0, label %if.end13
  ]

if.then12:                                        ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %cleanup

if.end13:                                         ; preds = %if.end, %if.end
  %2 = and i32 %conv, 251
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %cmp14 = icmp eq i32 %and1, 0
  br i1 %cmp14, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end20
  %cmp24.not = icmp eq i64 %len, 1
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.then23
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 305, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %cleanup

if.end27:                                         ; preds = %if.then23
  %call = tail call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point) #3
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %4 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call29 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %4) #3
  %add = add nsw i32 %call29, 7
  %div = sdiv i32 %add, 8
  %conv30 = sext i32 %div to i64
  %cmp31 = icmp eq i32 %and1, 2
  %add33 = add nsw i64 %conv30, 1
  %mul = shl nsw i64 %conv30, 1
  %add34 = or i64 %mul, 1
  %cond = select i1 %cmp31, i64 %add33, i64 %add34
  %cmp35.not = icmp eq i64 %cond, %len
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end28
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %cmp39 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp39, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end38
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 21
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  %call42 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %5) #3
  %cmp43 = icmp eq %struct.bignum_ctx* %call42, null
  br i1 %cmp43, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end38
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call42, %if.then41 ], [ null, %if.end38 ]
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call42, %if.then41 ], [ %ctx, %if.end38 ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call48 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call49 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp50 = icmp eq %struct.bignum_st* %call49, null
  br i1 %cmp50, label %err, label %if.end53

if.end53:                                         ; preds = %if.end47
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 1
  %call55 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %add.ptr, i32 noundef %div, %struct.bignum_st* noundef %call48) #3
  %tobool56.not = icmp eq %struct.bignum_st* %call55, null
  br i1 %tobool56.not, label %err, label %if.end58

if.end58:                                         ; preds = %if.end53
  %6 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call60 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call48, %struct.bignum_st* noundef %6) #3
  %cmp61 = icmp sgt i32 %call60, -1
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end58
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %err

if.end64:                                         ; preds = %if.end58
  br i1 %cmp31, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end64
  %call68 = tail call i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %call48, i32 noundef %and, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end98

if.else:                                          ; preds = %if.end64
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr, i64 %conv30
  %call75 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %add.ptr73, i32 noundef %div, %struct.bignum_st* noundef nonnull %call49) #3
  %tobool76.not = icmp eq %struct.bignum_st* %call75, null
  br i1 %tobool76.not, label %err, label %if.end78

if.end78:                                         ; preds = %if.else
  %7 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !11
  %call80 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %call49, %struct.bignum_st* noundef %7) #3
  %cmp81 = icmp sgt i32 %call80, -1
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end78
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %err

if.end84:                                         ; preds = %if.end78
  %cmp85 = icmp eq i32 %and1, 6
  br i1 %cmp85, label %if.then87, label %if.end93

if.then87:                                        ; preds = %if.end84
  %call88 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef nonnull %call49) #3
  %cmp89.not = icmp eq i32 %and, %call88
  br i1 %cmp89.not, label %if.end93, label %if.then91

if.then91:                                        ; preds = %if.then87
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_GFp_simple_oct2point, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #3
  br label %err

if.end93:                                         ; preds = %if.then87, %if.end84
  %call94 = tail call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %call48, %struct.bignum_st* noundef nonnull %call49, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %if.end98

if.end98:                                         ; preds = %if.end93, %if.then67
  br label %err

err:                                              ; preds = %if.end93, %if.else, %if.then67, %if.end53, %if.end47, %if.end98, %if.then91, %if.then83, %if.then63
  %ret.0 = phi i32 [ 0, %if.end47 ], [ 0, %if.then63 ], [ 1, %if.end98 ], [ 0, %if.then67 ], [ 0, %if.then83 ], [ 0, %if.then91 ], [ 0, %if.end93 ], [ 0, %if.else ], [ 0, %if.end53 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %err, %if.then37, %if.end27, %if.then26, %if.then19, %if.then12, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then12 ], [ 0, %if.then19 ], [ 0, %if.then26 ], [ %call, %if.end27 ], [ 0, %if.then37 ], [ %ret.0, %err ], [ 0, %if.then41 ]
  ret i32 %retval.0
}

declare i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

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
!4 = !{!5, !6, i64 168}
!5 = !{!"ec_group_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !7, i64 44, !6, i64 48, !10, i64 56, !6, i64 64, !7, i64 72, !6, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !7, i64 152, !7, i64 160, !6, i64 168, !6, i64 176}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 64}
!12 = !{!5, !6, i64 0}
!13 = !{!14, !6, i64 288}
!14 = !{!"ec_method_st", !9, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432}
!15 = !{!14, !6, i64 256}
!16 = !{!14, !6, i64 248}
!17 = !{!5, !9, i64 112}
!18 = !{!5, !6, i64 96}
!19 = !{!5, !6, i64 104}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !22, !27, !23}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !22, !23}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !22, !27, !23}
