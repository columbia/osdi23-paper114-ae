; ModuleID = 'crypto/dh/dh_asn1.c'
source_filename = "crypto/dh/dh_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
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
%struct.int_dhx942_dh = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.int_dhvparams* }
%struct.int_dhvparams = type { %struct.asn1_string_st*, %struct.bignum_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@DHparams_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @DHparams_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* bitcast (%struct.ASN1_AUX_st* @DHparams_aux to i8*), i64 200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0) }, align 8
@DHparams_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 0, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @dh_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"DHparams\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"crypto/dh/dh_asn1.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"params.p\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"params.g\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@DHparams_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4097, i64 0, i64 96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZINT32_it }], align 16
@DHxparams_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @DHxparams_seq_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* null, i64 40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0) }, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"int_dhx942_dh\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"vparams\00", align 1
@DHxparams_seq_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DHvparams_it }], align 16
@DHvparams_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @DHvparams_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0) }, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"int_dhvparams\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@DHvparams_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @DHparams_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @DHparams_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @d2i_DHparams(%struct.dh_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.dh_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @DHparams_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.dh_st*
  ret %struct.dh_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DHparams(%struct.dh_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.dh_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @DHparams_it.local_it) #5
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.int_dhx942_dh* @d2i_int_dhx(%struct.int_dhx942_dh** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.int_dhx942_dh** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @DHxparams_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.int_dhx942_dh*
  ret %struct.int_dhx942_dh* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_int_dhx(%struct.int_dhx942_dh* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.int_dhx942_dh* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @DHxparams_it.local_it) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @d2i_DHxparams(%struct.dh_st** noundef %a, i8** noundef %pp, i64 noundef %length) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.dh_st* @DH_new() #5
  %cmp = icmp eq %struct.dh_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.int_dhx942_dh* @d2i_int_dhx(%struct.int_dhx942_dh** noundef null, i8** noundef %pp, i64 noundef %length) #6
  %cmp2 = icmp eq %struct.int_dhx942_dh* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @DH_free(%struct.dh_st* noundef nonnull %call) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5.not = icmp eq %struct.dh_st** %a, null
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  %0 = load %struct.dh_st*, %struct.dh_st** %a, align 8, !tbaa !4
  tail call void @DH_free(%struct.dh_st* noundef %0) #5
  store %struct.dh_st* %call, %struct.dh_st** %a, align 8, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %params8 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2
  %p = getelementptr inbounds %struct.int_dhx942_dh, %struct.int_dhx942_dh* %call1, i64 0, i32 0
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %q = getelementptr inbounds %struct.int_dhx942_dh, %struct.int_dhx942_dh* %call1, i64 0, i32 1
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !10
  %g = getelementptr inbounds %struct.int_dhx942_dh, %struct.int_dhx942_dh* %call1, i64 0, i32 2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !11
  %call9 = tail call i32 @DH_set0_pqg(%struct.dh_st* noundef nonnull %call, %struct.bignum_st* noundef %1, %struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3) #5
  %j = getelementptr inbounds %struct.int_dhx942_dh, %struct.int_dhx942_dh* %call1, i64 0, i32 3
  %4 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !12
  tail call void @ossl_ffc_params_set0_j(%struct.ffc_params_st* noundef nonnull %params8, %struct.bignum_st* noundef %4) #5
  %vparams = getelementptr inbounds %struct.int_dhx942_dh, %struct.int_dhx942_dh* %call1, i64 0, i32 4
  %5 = load %struct.int_dhvparams*, %struct.int_dhvparams** %vparams, align 8, !tbaa !13
  %cmp10.not = icmp eq %struct.int_dhvparams* %5, null
  br i1 %cmp10.not, label %if.end27, label %if.then11

if.then11:                                        ; preds = %if.end7
  %counter13 = getelementptr inbounds %struct.int_dhvparams, %struct.int_dhvparams* %5, i64 0, i32 1
  %6 = load %struct.bignum_st*, %struct.bignum_st** %counter13, align 8, !tbaa !14
  %call14 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %6) #5
  %7 = load %struct.int_dhvparams*, %struct.int_dhvparams** %vparams, align 8, !tbaa !13
  %seed = getelementptr inbounds %struct.int_dhvparams, %struct.int_dhvparams* %7, i64 0, i32 0
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seed, align 8, !tbaa !16
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %8, i64 0, i32 2
  %9 = load i8*, i8** %data, align 8, !tbaa !17
  %length18 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %8, i64 0, i32 0
  %10 = load i32, i32* %length18, align 8, !tbaa !21
  %conv = sext i32 %10 to i64
  %conv19 = trunc i64 %call14 to i32
  %call20 = tail call i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef nonnull %params8, i8* noundef %9, i64 noundef %conv, i32 noundef %conv19) #5
  %11 = load %struct.int_dhvparams*, %struct.int_dhvparams** %vparams, align 8, !tbaa !13
  %seed22 = getelementptr inbounds %struct.int_dhvparams, %struct.int_dhvparams* %11, i64 0, i32 0
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seed22, align 8, !tbaa !16
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef %12) #5
  %13 = load %struct.int_dhvparams*, %struct.int_dhvparams** %vparams, align 8, !tbaa !13
  %counter24 = getelementptr inbounds %struct.int_dhvparams, %struct.int_dhvparams* %13, i64 0, i32 1
  %14 = load %struct.bignum_st*, %struct.bignum_st** %counter24, align 8, !tbaa !14
  tail call void @BN_free(%struct.bignum_st* noundef %14) #5
  %15 = bitcast %struct.int_dhvparams** %vparams to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 125) #5
  store %struct.int_dhvparams* null, %struct.int_dhvparams** %vparams, align 8, !tbaa !13
  br label %if.end27

if.end27:                                         ; preds = %if.then11, %if.end7
  %17 = bitcast %struct.int_dhx942_dh* %call1 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %17, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 129) #5
  tail call void @DH_clear_flags(%struct.dh_st* noundef nonnull %call, i32 noundef 61440) #5
  tail call void @DH_set_flags(%struct.dh_st* noundef nonnull %call, i32 noundef 4096) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end27, %if.then3
  %retval.0 = phi %struct.dh_st* [ null, %if.then3 ], [ %call, %if.end27 ], [ null, %entry ]
  ret %struct.dh_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.dh_st* @DH_new() local_unnamed_addr #2

declare void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #2

declare i32 @DH_set0_pqg(%struct.dh_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @ossl_ffc_params_set0_j(%struct.ffc_params_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i64 @BN_get_word(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare void @DH_clear_flags(%struct.dh_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @DH_set_flags(%struct.dh_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_DHxparams(%struct.dh_st* noundef %dh, i8** noundef %pp) local_unnamed_addr #1 {
entry:
  %dhx = alloca %struct.int_dhx942_dh, align 8
  %dhv = alloca %struct.int_dhvparams, align 8
  %seed = alloca %struct.asn1_string_st, align 8
  %seedlen = alloca i64, align 8
  %counter = alloca i32, align 4
  %0 = bitcast %struct.int_dhx942_dh* %dhx to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7
  %1 = bitcast %struct.int_dhvparams* %dhv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %2 = bitcast %struct.asn1_string_st* %seed to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7
  %3 = bitcast i64* %seedlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  store i64 0, i64* %seedlen, align 8, !tbaa !22
  %params1 = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2
  %4 = bitcast i32* %counter to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7
  %p = getelementptr inbounds %struct.int_dhx942_dh, %struct.int_dhx942_dh* %dhx, i64 0, i32 0
  %q = getelementptr inbounds %struct.int_dhx942_dh, %struct.int_dhx942_dh* %dhx, i64 0, i32 1
  %g = getelementptr inbounds %struct.int_dhx942_dh, %struct.int_dhx942_dh* %dhx, i64 0, i32 2
  call void @ossl_ffc_params_get0_pqg(%struct.ffc_params_st* noundef nonnull %params1, %struct.bignum_st** noundef nonnull %p, %struct.bignum_st** noundef nonnull %q, %struct.bignum_st** noundef nonnull %g) #5
  %j = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 3
  %5 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !23
  %j2 = getelementptr inbounds %struct.int_dhx942_dh, %struct.int_dhx942_dh* %dhx, i64 0, i32 3
  store %struct.bignum_st* %5, %struct.bignum_st** %j2, align 8, !tbaa !12
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %seed, i64 0, i32 2
  call void @ossl_ffc_params_get_validate_params(%struct.ffc_params_st* noundef nonnull %params1, i8** noundef nonnull %data, i64* noundef nonnull %seedlen, i32* noundef nonnull %counter) #5
  %6 = load i64, i64* %seedlen, align 8, !tbaa !22
  %conv = trunc i64 %6 to i32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %seed, i64 0, i32 0
  store i32 %conv, i32* %length, align 8, !tbaa !21
  %7 = load i32, i32* %counter, align 4, !tbaa !25
  %cmp = icmp ne i32 %7, -1
  %8 = load i8*, i8** %data, align 8
  %cmp5 = icmp ne i8* %8, null
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  %cmp9 = icmp sgt i32 %conv, 0
  %or.cond32 = select i1 %or.cond, i1 %cmp9, i1 false
  br i1 %or.cond32, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %seed, i64 0, i32 3
  store i64 8, i64* %flags, align 8, !tbaa !26
  %seed11 = getelementptr inbounds %struct.int_dhvparams, %struct.int_dhvparams* %dhv, i64 0, i32 0
  store %struct.asn1_string_st* %seed, %struct.asn1_string_st** %seed11, align 8, !tbaa !16
  %call = call %struct.bignum_st* @BN_new() #5
  %counter12 = getelementptr inbounds %struct.int_dhvparams, %struct.int_dhvparams* %dhv, i64 0, i32 1
  store %struct.bignum_st* %call, %struct.bignum_st** %counter12, align 8, !tbaa !14
  %cmp14 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp14, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %9 = load i32, i32* %counter, align 4, !tbaa !25
  %conv18 = sext i32 %9 to i64
  %call19 = call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call, i64 noundef %conv18) #5
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %err, label %if.end23

if.end23:                                         ; preds = %entry, %if.end
  %.sink = phi %struct.int_dhvparams* [ %dhv, %if.end ], [ null, %entry ]
  %vparams22 = getelementptr inbounds %struct.int_dhx942_dh, %struct.int_dhx942_dh* %dhx, i64 0, i32 4
  store %struct.int_dhvparams* %.sink, %struct.int_dhvparams** %vparams22, align 8, !tbaa !13
  %call24 = call i32 @i2d_int_dhx(%struct.int_dhx942_dh* noundef nonnull %dhx, i8** noundef %pp) #6
  %counter25.phi.trans.insert = getelementptr inbounds %struct.int_dhvparams, %struct.int_dhvparams* %dhv, i64 0, i32 1
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %counter25.phi.trans.insert, align 8, !tbaa !14
  br label %err

err:                                              ; preds = %if.end, %if.end23
  %10 = phi %struct.bignum_st* [ %.pre, %if.end23 ], [ %call, %if.end ]
  %ret.0 = phi i32 [ %call24, %if.end23 ], [ 0, %if.end ]
  call void @BN_free(%struct.bignum_st* noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare void @ossl_ffc_params_get0_pqg(%struct.ffc_params_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare void @ossl_ffc_params_get_validate_params(%struct.ffc_params_st* noundef, i8** noundef, i64* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @BIGNUM_it() #2

declare %struct.ASN1_ITEM_st* @ZINT32_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  switch i32 %operation, label %return [
    i32 0, label %if.then
    i32 2, label %if.then4
    i32 5, label %if.then7
  ]

if.then:                                          ; preds = %entry
  %call = tail call %struct.dh_st* @DH_new() #5
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.dh_st**
  store %struct.dh_st* %call, %struct.dh_st** %0, align 8, !tbaa !4
  %cmp1.not = icmp eq %struct.dh_st* %call, null
  %. = select i1 %cmp1.not, i32 0, i32 2
  br label %return

if.then4:                                         ; preds = %entry
  %1 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.dh_st**
  %2 = load %struct.dh_st*, %struct.dh_st** %1, align 8, !tbaa !4
  tail call void @DH_free(%struct.dh_st* noundef %2) #5
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %return

if.then7:                                         ; preds = %entry
  %3 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.dh_st**
  %4 = load %struct.dh_st*, %struct.dh_st** %3, align 8, !tbaa !4
  tail call void @DH_clear_flags(%struct.dh_st* noundef %4, i32 noundef 61440) #5
  tail call void @DH_set_flags(%struct.dh_st* noundef %4, i32 noundef 0) #5
  tail call void @ossl_dh_cache_named_group(%struct.dh_st* noundef %4) #5
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %4, i64 0, i32 14
  %5 = load i64, i64* %dirty_cnt, align 8, !tbaa !27
  %inc = add i64 %5, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !27
  br label %return

return:                                           ; preds = %if.then7, %entry, %if.then, %if.then4
  %retval.0 = phi i32 [ 2, %if.then4 ], [ %., %if.then ], [ 1, %entry ], [ 1, %if.then7 ]
  ret i32 %retval.0
}

declare void @ossl_dh_cache_named_group(%struct.dh_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @DHvparams_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @DHvparams_it.local_it
}

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!10 = !{!9, !5, i64 8}
!11 = !{!9, !5, i64 16}
!12 = !{!9, !5, i64 24}
!13 = !{!9, !5, i64 32}
!14 = !{!15, !5, i64 8}
!15 = !{!"", !5, i64 0, !5, i64 8}
!16 = !{!15, !5, i64 0}
!17 = !{!18, !5, i64 8}
!18 = !{!"asn1_string_st", !19, i64 0, !19, i64 4, !5, i64 8, !20, i64 16}
!19 = !{!"int", !6, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!18, !19, i64 0}
!22 = !{!20, !20, i64 0}
!23 = !{!24, !5, i64 24}
!24 = !{!"ffc_params_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !20, i64 40, !19, i64 48, !19, i64 52, !19, i64 56, !19, i64 60, !19, i64 64, !5, i64 72, !5, i64 80}
!25 = !{!19, !19, i64 0}
!26 = !{!18, !20, i64 16}
!27 = !{!28, !20, i64 192}
!28 = !{!"dh_st", !19, i64 0, !19, i64 4, !24, i64 8, !19, i64 96, !5, i64 104, !5, i64 112, !19, i64 120, !5, i64 128, !6, i64 136, !29, i64 144, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !20, i64 192}
!29 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
