; ModuleID = 'crypto/ffc/ffc_params.c'
source_filename = "crypto/ffc/ffc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.dh_named_group_st = type opaque
%struct.bio_st = type opaque

@.str = private unnamed_addr constant [24 x i8] c"crypto/ffc/ffc_params.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gindex\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pcounter\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"hindex\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"validate-pq\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"validate-g\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"validate-legacy\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"prime P:\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"generator G:\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"subgroup order Q:\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"subgroup factor:\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"seed:\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"counter: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ossl_ffc_params_init(%struct.ffc_params_st* noundef %params) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ffc_params_st* %params to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 88) #5
  %pcounter = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 6
  store i32 -1, i32* %pcounter, align 8, !tbaa !4
  %gindex = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 8
  store i32 -1, i32* %gindex, align 8, !tbaa !11
  %flags = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 10
  store i32 3, i32* %flags, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_ffc_params_cleanup(%struct.ffc_params_st* noundef %params) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !13
  tail call void @BN_free(%struct.bignum_st* noundef %0) #5
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  tail call void @BN_free(%struct.bignum_st* noundef %1) #5
  %g = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !15
  tail call void @BN_free(%struct.bignum_st* noundef %2) #5
  %j = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !16
  tail call void @BN_free(%struct.bignum_st* noundef %3) #5
  %seed = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 4
  %4 = load i8*, i8** %seed, align 8, !tbaa !17
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 35) #5
  tail call void @ossl_ffc_params_init(%struct.ffc_params_st* noundef %params) #6
  ret void
}

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* nocapture noundef %d, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %q, %struct.bignum_st* noundef %g) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %p, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %p1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %d, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p1, align 8, !tbaa !13
  %cmp2.not = icmp eq %struct.bignum_st* %0, %p
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void @BN_free(%struct.bignum_st* noundef %0) #5
  store %struct.bignum_st* %p, %struct.bignum_st** %p1, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %cmp5.not = icmp eq %struct.bignum_st* %q, null
  br i1 %cmp5.not, label %if.end12, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end
  %q7 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %d, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q7, align 8, !tbaa !14
  %cmp8.not = icmp eq %struct.bignum_st* %1, %q
  br i1 %cmp8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %land.lhs.true6
  tail call void @BN_free(%struct.bignum_st* noundef %1) #5
  store %struct.bignum_st* %q, %struct.bignum_st** %q7, align 8, !tbaa !14
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true6, %if.end
  %cmp13.not = icmp eq %struct.bignum_st* %g, null
  br i1 %cmp13.not, label %if.end20, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end12
  %g15 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %d, i64 0, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %g15, align 8, !tbaa !15
  %cmp16.not = icmp eq %struct.bignum_st* %2, %g
  br i1 %cmp16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  tail call void @BN_free(%struct.bignum_st* noundef %2) #5
  store %struct.bignum_st* %g, %struct.bignum_st** %g15, align 8, !tbaa !15
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %land.lhs.true14, %if.end12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @ossl_ffc_params_get0_pqg(%struct.ffc_params_st* nocapture noundef readonly %d, %struct.bignum_st** noundef writeonly %p, %struct.bignum_st** noundef writeonly %q, %struct.bignum_st** noundef writeonly %g) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.bignum_st** %p, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %d, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p1, align 8, !tbaa !13
  store %struct.bignum_st* %0, %struct.bignum_st** %p, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2.not = icmp eq %struct.bignum_st** %q, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %q4 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %d, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q4, align 8, !tbaa !14
  store %struct.bignum_st* %1, %struct.bignum_st** %q, align 8, !tbaa !18
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %cmp6.not = icmp eq %struct.bignum_st** %g, null
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %g8 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %d, i64 0, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %g8, align 8, !tbaa !15
  store %struct.bignum_st* %2, %struct.bignum_st** %g, align 8, !tbaa !18
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_ffc_params_set0_j(%struct.ffc_params_st* nocapture noundef %d, %struct.bignum_st* noundef %j) local_unnamed_addr #0 {
entry:
  %j1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %d, i64 0, i32 3
  %0 = load %struct.bignum_st*, %struct.bignum_st** %j1, align 8, !tbaa !16
  tail call void @BN_free(%struct.bignum_st* noundef %0) #5
  store %struct.bignum_st* %j, %struct.bignum_st** %j1, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_set_seed(%struct.ffc_params_st* noundef %params, i8* noundef %seed, i64 noundef %seedlen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ffc_params_st* %params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %seed1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 4
  %0 = load i8*, i8** %seed1, align 8, !tbaa !17
  %cmp2.not = icmp eq i8* %0, null
  br i1 %cmp2.not, label %if.end9, label %if.then3

if.then3:                                         ; preds = %if.end
  %cmp5 = icmp eq i8* %0, %seed
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.then3
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 85) #5
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end
  %cmp10 = icmp ne i8* %seed, null
  %cmp11 = icmp ne i64 %seedlen, 0
  %or.cond = and i1 %cmp10, %cmp11
  br i1 %or.cond, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %call = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %seed, i64 noundef %seedlen, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 89) #5
  store i8* %call, i8** %seed1, align 8, !tbaa !17
  %cmp15 = icmp eq i8* %call, null
  br i1 %cmp15, label %return, label %return.sink.split

if.else:                                          ; preds = %if.end9
  store i8* null, i8** %seed1, align 8, !tbaa !17
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then12, %if.else
  %seedlen.sink = phi i64 [ 0, %if.else ], [ %seedlen, %if.then12 ]
  %seedlen18 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 5
  store i64 %seedlen.sink, i64* %seedlen18, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %return.sink.split, %if.then12, %if.then3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then3 ], [ 0, %if.then12 ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_ffc_params_set_gindex(%struct.ffc_params_st* nocapture noundef writeonly %params, i32 noundef %index) local_unnamed_addr #4 {
entry:
  %gindex = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 8
  store i32 %index, i32* %gindex, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_ffc_params_set_pcounter(%struct.ffc_params_st* nocapture noundef writeonly %params, i32 noundef %index) local_unnamed_addr #4 {
entry:
  %pcounter = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 6
  store i32 %index, i32* %pcounter, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_ffc_params_set_h(%struct.ffc_params_st* nocapture noundef writeonly %params, i32 noundef %index) local_unnamed_addr #4 {
entry:
  %h = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 9
  store i32 %index, i32* %h, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_ffc_params_set_flags(%struct.ffc_params_st* nocapture noundef writeonly %params, i32 noundef %flags) local_unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 10
  store i32 %flags, i32* %flags1, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @ossl_ffc_params_enable_flags(%struct.ffc_params_st* nocapture noundef %params, i32 noundef %flags, i32 noundef %enable) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %flags1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 10
  %0 = load i32, i32* %flags1, align 8, !tbaa !12
  %or = or i32 %0, %flags
  store i32 %or, i32* %flags1, align 8, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %entry
  %neg = xor i32 %flags, -1
  %flags2 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 10
  %1 = load i32, i32* %flags2, align 8, !tbaa !12
  %and = and i32 %1, %neg
  store i32 %and, i32* %flags2, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ossl_ffc_set_digest(%struct.ffc_params_st* nocapture noundef writeonly %params, i8* noundef %alg, i8* noundef %props) local_unnamed_addr #4 {
entry:
  %mdname = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 11
  store i8* %alg, i8** %mdname, align 8, !tbaa !21
  %mdprops = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 12
  store i8* %props, i8** %mdprops, align 8, !tbaa !22
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_set_validate_params(%struct.ffc_params_st* noundef %params, i8* noundef %seed, i64 noundef %seedlen, i32 noundef %counter) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_ffc_params_set_seed(%struct.ffc_params_st* noundef %params, i8* noundef %seed, i64 noundef %seedlen) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pcounter = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 6
  store i32 %counter, i32* %pcounter, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @ossl_ffc_params_get_validate_params(%struct.ffc_params_st* nocapture noundef readonly %params, i8** noundef writeonly %seed, i64* noundef writeonly %seedlen, i32* noundef writeonly %pcounter) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq i8** %seed, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %seed1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 4
  %0 = load i8*, i8** %seed1, align 8, !tbaa !17
  store i8* %0, i8** %seed, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2.not = icmp eq i64* %seedlen, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %seedlen4 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 5
  %1 = load i64, i64* %seedlen4, align 8, !tbaa !19
  store i64 %1, i64* %seedlen, align 8, !tbaa !23
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %cmp6.not = icmp eq i32* %pcounter, null
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %pcounter8 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 6
  %2 = load i32, i32* %pcounter8, align 8, !tbaa !4
  store i32 %2, i32* %pcounter, align 4, !tbaa !24
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_copy(%struct.ffc_params_st* nocapture noundef %dst, %struct.ffc_params_st* nocapture noundef readonly %src) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %dst, i64 0, i32 0
  %p1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %src, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p1, align 8, !tbaa !13
  %call = tail call fastcc i32 @ffc_bn_cpy(%struct.bignum_st** noundef %p, %struct.bignum_st* noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %g = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %dst, i64 0, i32 2
  %g2 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %src, i64 0, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g2, align 8, !tbaa !15
  %call3 = tail call fastcc i32 @ffc_bn_cpy(%struct.bignum_st** noundef nonnull %g, %struct.bignum_st* noundef %1) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %dst, i64 0, i32 1
  %q6 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %src, i64 0, i32 1
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q6, align 8, !tbaa !14
  %call7 = tail call fastcc i32 @ffc_bn_cpy(%struct.bignum_st** noundef nonnull %q, %struct.bignum_st* noundef %2) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %j = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %dst, i64 0, i32 3
  %j10 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %src, i64 0, i32 3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %j10, align 8, !tbaa !16
  %call11 = tail call fastcc i32 @ffc_bn_cpy(%struct.bignum_st** noundef nonnull %j, %struct.bignum_st* noundef %3) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %seed = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %dst, i64 0, i32 4
  %4 = load i8*, i8** %seed, align 8, !tbaa !17
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 186) #5
  %seedlen = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %src, i64 0, i32 5
  %5 = load i64, i64* %seedlen, align 8, !tbaa !19
  %seedlen13 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %dst, i64 0, i32 5
  store i64 %5, i64* %seedlen13, align 8, !tbaa !19
  %seed14 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %src, i64 0, i32 4
  %6 = load i8*, i8** %seed14, align 8, !tbaa !17
  %cmp.not = icmp eq i8* %6, null
  br i1 %cmp.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end
  %7 = load i64, i64* %seedlen, align 8, !tbaa !19
  %call18 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %6, i64 noundef %7, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 189) #5
  store i8* %call18, i8** %seed, align 8, !tbaa !17
  %cmp21 = icmp eq i8* %call18, null
  br i1 %cmp21, label %return, label %if.end25

if.else:                                          ; preds = %if.end
  store i8* null, i8** %seed, align 8, !tbaa !17
  br label %if.end25

if.end25:                                         ; preds = %if.then15, %if.else
  %pcounter = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %src, i64 0, i32 6
  %pcounter27 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %dst, i64 0, i32 6
  %8 = bitcast i32* %pcounter to <4 x i32>*
  %9 = load <4 x i32>, <4 x i32>* %8, align 8, !tbaa !24
  %10 = bitcast i32* %pcounter27 to <4 x i32>*
  store <4 x i32> %9, <4 x i32>* %10, align 8, !tbaa !24
  %flags = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %src, i64 0, i32 10
  %11 = load i32, i32* %flags, align 8, !tbaa !12
  %flags30 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %dst, i64 0, i32 10
  store i32 %11, i32* %flags30, align 8, !tbaa !12
  br label %return

return:                                           ; preds = %if.then15, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %if.end25
  %retval.0 = phi i32 [ 1, %if.end25 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ffc_bn_cpy(%struct.bignum_st** nocapture noundef %dst, %struct.bignum_st* noundef %src) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %src, null
  br i1 %cmp, label %if.end9, label %if.else

if.else:                                          ; preds = %entry
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef nonnull %src, i32 noundef 2) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %call1 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef nonnull %src, i32 noundef 1) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end9, label %if.else4

if.else4:                                         ; preds = %land.lhs.true, %if.else
  %call5 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %src) #5
  %cmp6 = icmp eq %struct.bignum_st* %call5, null
  br i1 %cmp6, label %cleanup, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %entry, %if.else4
  %a.0 = phi %struct.bignum_st* [ %call5, %if.else4 ], [ null, %entry ], [ %src, %land.lhs.true ]
  %0 = load %struct.bignum_st*, %struct.bignum_st** %dst, align 8, !tbaa !18
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #5
  store %struct.bignum_st* %a.0, %struct.bignum_st** %dst, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.else4, %if.end9
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %if.else4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_cmp(%struct.ffc_params_st* nocapture noundef readonly %a, %struct.ffc_params_st* nocapture noundef readonly %b, i32 noundef %ignore_q) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %a, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !13
  %p1 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %b, i64 0, i32 0
  %1 = load %struct.bignum_st*, %struct.bignum_st** %p1, align 8, !tbaa !13
  %call = tail call i32 @BN_cmp(%struct.bignum_st* noundef %0, %struct.bignum_st* noundef %1) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %g = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %a, i64 0, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !15
  %g2 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %b, i64 0, i32 2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %g2, align 8, !tbaa !15
  %call3 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3) #5
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %tobool.not = icmp eq i32 %ignore_q, 0
  br i1 %tobool.not, label %lor.rhs, label %land.end

lor.rhs:                                          ; preds = %land.rhs
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %a, i64 0, i32 1
  %4 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %q5 = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %b, i64 0, i32 1
  %5 = load %struct.bignum_st*, %struct.bignum_st** %q5, align 8, !tbaa !14
  %call6 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5) #5
  %cmp7 = icmp eq i32 %call6, 0
  %phi.cast = zext i1 %cmp7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %land.lhs.true, %entry
  %6 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phi.cast, %lor.rhs ]
  ret i32 %6
}

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_todata(%struct.ffc_params_st* noundef readonly %ffc, %struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ffc_params_st* %ffc, null
  br i1 %cmp, label %cleanup94, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !13
  %cmp1.not = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.bignum_st* noundef nonnull %0) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup94, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %cmp5.not = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp5.not, label %if.end11, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end4
  %call8 = tail call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.bignum_st* noundef nonnull %1) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup94, label %if.end11

if.end11:                                         ; preds = %land.lhs.true6, %if.end4
  %g = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !15
  %cmp12.not = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp12.not, label %if.end18, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end11
  %call15 = tail call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.bignum_st* noundef nonnull %2) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup94, label %if.end18

if.end18:                                         ; preds = %land.lhs.true13, %if.end11
  %j = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !16
  %cmp19.not = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp19.not, label %if.end25, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.end18
  %call22 = tail call i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.bignum_st* noundef nonnull %3) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup94, label %if.end25

if.end25:                                         ; preds = %land.lhs.true20, %if.end18
  %gindex = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 8
  %4 = load i32, i32* %gindex, align 8, !tbaa !11
  %call26 = tail call i32 @ossl_param_build_set_int(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef %4) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup94, label %if.end29

if.end29:                                         ; preds = %if.end25
  %pcounter = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 6
  %5 = load i32, i32* %pcounter, align 8, !tbaa !4
  %call30 = tail call i32 @ossl_param_build_set_int(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 noundef %5) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup94, label %if.end33

if.end33:                                         ; preds = %if.end29
  %h = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 9
  %6 = load i32, i32* %h, align 4, !tbaa !20
  %call34 = tail call i32 @ossl_param_build_set_int(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 noundef %6) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup94, label %if.end37

if.end37:                                         ; preds = %if.end33
  %seed = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 4
  %7 = load i8*, i8** %seed, align 8, !tbaa !17
  %cmp38.not = icmp eq i8* %7, null
  br i1 %cmp38.not, label %if.end44, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end37
  %seedlen = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 5
  %8 = load i64, i64* %seedlen, align 8, !tbaa !19
  %call41 = tail call i32 @ossl_param_build_set_octet_string(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef %8) #5
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup94, label %if.end44

if.end44:                                         ; preds = %land.lhs.true39, %if.end37
  %nid = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 7
  %9 = load i32, i32* %nid, align 4, !tbaa !25
  %cmp45.not = icmp eq i32 %9, 0
  br i1 %cmp45.not, label %if.end56, label %if.then46

if.then46:                                        ; preds = %if.end44
  %call48 = tail call %struct.dh_named_group_st* @ossl_ffc_uid_to_dh_named_group(i32 noundef %9) #5
  %call49 = tail call i8* @ossl_ffc_named_group_get_name(%struct.dh_named_group_st* noundef %call48) #5
  %cmp50 = icmp eq i8* %call49, null
  br i1 %cmp50, label %cleanup94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then46
  %call51 = tail call i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %call49) #5
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %cleanup94, label %if.end56

if.end56:                                         ; preds = %lor.lhs.false, %if.end44
  %flags = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 10
  %10 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %10, 1
  %call58 = tail call i32 @ossl_param_build_set_int(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef %and) #5
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup94, label %if.end61

if.end61:                                         ; preds = %if.end56
  %11 = load i32, i32* %flags, align 8, !tbaa !12
  %and63 = lshr i32 %11, 1
  %and63.lobit = and i32 %and63, 1
  %call66 = tail call i32 @ossl_param_build_set_int(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 noundef %and63.lobit) #5
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup94, label %if.end69

if.end69:                                         ; preds = %if.end61
  %12 = load i32, i32* %flags, align 8, !tbaa !12
  %and71 = lshr i32 %12, 2
  %and71.lobit = and i32 %and71, 1
  %call74 = tail call i32 @ossl_param_build_set_int(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 noundef %and71.lobit) #5
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %cleanup94, label %if.end77

if.end77:                                         ; preds = %if.end69
  %mdname = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 11
  %13 = load i8*, i8** %mdname, align 8, !tbaa !21
  %cmp78.not = icmp eq i8* %13, null
  br i1 %cmp78.not, label %if.end85, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %if.end77
  %call82 = tail call i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %13) #5
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %cleanup94, label %if.end85

if.end85:                                         ; preds = %land.lhs.true80, %if.end77
  %mdprops = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 12
  %14 = load i8*, i8** %mdprops, align 8, !tbaa !22
  %cmp86.not = icmp eq i8* %14, null
  br i1 %cmp86.not, label %if.end93, label %land.lhs.true88

land.lhs.true88:                                  ; preds = %if.end85
  %call90 = tail call i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef %bld, %struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %14) #5
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %cleanup94, label %if.end93

if.end93:                                         ; preds = %land.lhs.true88, %if.end85
  br label %cleanup94

cleanup94:                                        ; preds = %land.lhs.true88, %land.lhs.true80, %if.end69, %if.end61, %if.end56, %lor.lhs.false, %if.then46, %land.lhs.true39, %if.end33, %if.end29, %if.end25, %land.lhs.true20, %land.lhs.true13, %land.lhs.true6, %land.lhs.true, %entry, %if.end93
  %retval.1 = phi i32 [ 1, %if.end93 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true6 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true20 ], [ 0, %if.end25 ], [ 0, %if.end29 ], [ 0, %if.end33 ], [ 0, %land.lhs.true39 ], [ 0, %if.then46 ], [ 0, %lor.lhs.false ], [ 0, %if.end56 ], [ 0, %if.end61 ], [ 0, %if.end69 ], [ 0, %land.lhs.true80 ], [ 0, %land.lhs.true88 ]
  ret i32 %retval.1
}

declare i32 @ossl_param_build_set_bn(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @ossl_param_build_set_int(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_param_build_set_octet_string(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.dh_named_group_st* @ossl_ffc_uid_to_dh_named_group(i32 noundef) local_unnamed_addr #2

declare i8* @ossl_ffc_named_group_get_name(%struct.dh_named_group_st* noundef) local_unnamed_addr #2

declare i32 @ossl_param_build_set_utf8_string(%struct.ossl_param_bld_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_params_print(%struct.bio_st* noundef %bp, %struct.ffc_params_st* nocapture noundef readonly %ffc, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !13
  %call = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), %struct.bignum_st* noundef %0, i8* noundef null, i32 noundef %indent) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %g = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !15
  %call1 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), %struct.bignum_st* noundef %1, i8* noundef null, i32 noundef %indent) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 1
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !14
  %cmp.not = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %call6 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), %struct.bignum_st* noundef nonnull %2, i8* noundef null, i32 noundef %indent) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  %j = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !16
  %cmp10.not = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp10.not, label %if.end16, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end9
  %call13 = tail call i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), %struct.bignum_st* noundef nonnull %3, i8* noundef null, i32 noundef %indent) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %land.lhs.true11, %if.end9
  %seed = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 4
  %4 = load i8*, i8** %seed, align 8, !tbaa !17
  %cmp17.not = icmp eq i8* %4, null
  br i1 %cmp17.not, label %if.end51, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %indent, i32 noundef 128) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then18
  %call21 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #5
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %seedlen = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 5
  %add = add nsw i32 %indent, 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end35
  %i.0 = phi i64 [ %add37, %if.end35 ], [ 0, %for.cond.preheader ]
  %5 = load i64, i64* %seedlen, align 8, !tbaa !19
  %cmp25 = icmp ult i64 %i.0, %5
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = urem i64 %i.0, 15
  %cmp26 = icmp eq i64 %rem, 0
  br i1 %cmp26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %for.body
  %call28 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #5
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.then27
  %call31 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %add, i32 noundef 128) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false30.if.end35_crit_edge

lor.lhs.false30.if.end35_crit_edge:               ; preds = %lor.lhs.false30
  %.pre = load i64, i64* %seedlen, align 8, !tbaa !19
  br label %if.end35

if.end35:                                         ; preds = %lor.lhs.false30.if.end35_crit_edge, %for.body
  %6 = phi i64 [ %.pre, %lor.lhs.false30.if.end35_crit_edge ], [ %5, %for.body ]
  %7 = load i8*, i8** %seed, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %i.0
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !26
  %conv = zext i8 %8 to i32
  %add37 = add nuw i64 %i.0, 1
  %cmp39 = icmp eq i64 %add37, %6
  %cond = select i1 %cmp39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)
  %call41 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv, i8* noundef %cond) #5
  %cmp42 = icmp slt i32 %call41, 1
  br i1 %cmp42, label %err, label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %call46 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef 1) #5
  %cmp47 = icmp slt i32 %call46, 1
  br i1 %cmp47, label %return, label %if.end51

if.end51:                                         ; preds = %for.end, %if.end16
  %pcounter = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 6
  %9 = load i32, i32* %pcounter, align 8, !tbaa !4
  %cmp52.not = icmp eq i32 %9, -1
  br i1 %cmp52.not, label %return, label %if.then54

if.then54:                                        ; preds = %if.end51
  %call55 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %indent, i32 noundef 128) #5
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.then54
  %10 = load i32, i32* %pcounter, align 8, !tbaa !4
  %call59 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 noundef %10) #5
  %cmp60 = icmp slt i32 %call59, 1
  br i1 %cmp60, label %err, label %return

err:                                              ; preds = %if.end35, %if.then27, %lor.lhs.false30, %if.then18, %lor.lhs.false, %if.then54, %lor.lhs.false57, %land.lhs.true11, %land.lhs.true, %if.end, %entry
  br label %return

return:                                           ; preds = %for.end, %if.end51, %lor.lhs.false57, %err
  %retval.1 = phi i32 [ 0, %err ], [ 1, %lor.lhs.false57 ], [ 1, %if.end51 ], [ 0, %for.end ]
  ret i32 %retval.1
}

declare i32 @ASN1_bn_print(%struct.bio_st* noundef, i8* noundef, %struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_indent(%struct.bio_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_get_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 48}
!5 = !{!"ffc_params_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !6, i64 72, !6, i64 80}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !10, i64 56}
!12 = !{!5, !10, i64 64}
!13 = !{!5, !6, i64 0}
!14 = !{!5, !6, i64 8}
!15 = !{!5, !6, i64 16}
!16 = !{!5, !6, i64 24}
!17 = !{!5, !6, i64 32}
!18 = !{!6, !6, i64 0}
!19 = !{!5, !9, i64 40}
!20 = !{!5, !10, i64 60}
!21 = !{!5, !6, i64 72}
!22 = !{!5, !6, i64 80}
!23 = !{!9, !9, i64 0}
!24 = !{!10, !10, i64 0}
!25 = !{!5, !10, i64 52}
!26 = !{!7, !7, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
