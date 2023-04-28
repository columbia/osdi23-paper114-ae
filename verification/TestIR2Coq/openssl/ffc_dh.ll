; ModuleID = 'crypto/ffc/ffc_dh.c'
source_filename = "crypto/ffc/ffc_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_named_group_st = type { i8*, i32, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_st = type opaque
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }

@dh_named_groups = internal constant [14 x %struct.dh_named_group_st] [%struct.dh_named_group_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 1126, i32 2048, %struct.bignum_st* @ossl_bignum_ffdhe2048_p, %struct.bignum_st* @ossl_bignum_ffdhe2048_q, %struct.bignum_st* @ossl_bignum_const_2 }, %struct.dh_named_group_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1127, i32 3072, %struct.bignum_st* @ossl_bignum_ffdhe3072_p, %struct.bignum_st* @ossl_bignum_ffdhe3072_q, %struct.bignum_st* @ossl_bignum_const_2 }, %struct.dh_named_group_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 1128, i32 4096, %struct.bignum_st* @ossl_bignum_ffdhe4096_p, %struct.bignum_st* @ossl_bignum_ffdhe4096_q, %struct.bignum_st* @ossl_bignum_const_2 }, %struct.dh_named_group_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 1129, i32 6144, %struct.bignum_st* @ossl_bignum_ffdhe6144_p, %struct.bignum_st* @ossl_bignum_ffdhe6144_q, %struct.bignum_st* @ossl_bignum_const_2 }, %struct.dh_named_group_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 1130, i32 8192, %struct.bignum_st* @ossl_bignum_ffdhe8192_p, %struct.bignum_st* @ossl_bignum_ffdhe8192_q, %struct.bignum_st* @ossl_bignum_const_2 }, %struct.dh_named_group_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 1212, i32 1536, %struct.bignum_st* @ossl_bignum_modp_1536_p, %struct.bignum_st* @ossl_bignum_modp_1536_q, %struct.bignum_st* @ossl_bignum_const_2 }, %struct.dh_named_group_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1213, i32 2048, %struct.bignum_st* @ossl_bignum_modp_2048_p, %struct.bignum_st* @ossl_bignum_modp_2048_q, %struct.bignum_st* @ossl_bignum_const_2 }, %struct.dh_named_group_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 1214, i32 3072, %struct.bignum_st* @ossl_bignum_modp_3072_p, %struct.bignum_st* @ossl_bignum_modp_3072_q, %struct.bignum_st* @ossl_bignum_const_2 }, %struct.dh_named_group_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 1215, i32 4096, %struct.bignum_st* @ossl_bignum_modp_4096_p, %struct.bignum_st* @ossl_bignum_modp_4096_q, %struct.bignum_st* @ossl_bignum_const_2 }, %struct.dh_named_group_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 1216, i32 6144, %struct.bignum_st* @ossl_bignum_modp_6144_p, %struct.bignum_st* @ossl_bignum_modp_6144_q, %struct.bignum_st* @ossl_bignum_const_2 }, %struct.dh_named_group_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 1217, i32 8192, %struct.bignum_st* @ossl_bignum_modp_8192_p, %struct.bignum_st* @ossl_bignum_modp_8192_q, %struct.bignum_st* @ossl_bignum_const_2 }, %struct.dh_named_group_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 1, i32 1024, %struct.bignum_st* @ossl_bignum_dh1024_160_p, %struct.bignum_st* @ossl_bignum_dh1024_160_q, %struct.bignum_st* @ossl_bignum_dh1024_160_g }, %struct.dh_named_group_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 2, i32 2048, %struct.bignum_st* @ossl_bignum_dh2048_224_p, %struct.bignum_st* @ossl_bignum_dh2048_224_q, %struct.bignum_st* @ossl_bignum_dh2048_224_g }, %struct.dh_named_group_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 3, i32 2048, %struct.bignum_st* @ossl_bignum_dh2048_256_p, %struct.bignum_st* @ossl_bignum_dh2048_256_q, %struct.bignum_st* @ossl_bignum_dh2048_256_g }], align 16
@.str = private unnamed_addr constant [10 x i8] c"ffdhe2048\00", align 1
@ossl_bignum_ffdhe2048_p = external constant %struct.bignum_st, align 1
@ossl_bignum_ffdhe2048_q = external constant %struct.bignum_st, align 1
@ossl_bignum_const_2 = external constant %struct.bignum_st, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ffdhe3072\00", align 1
@ossl_bignum_ffdhe3072_p = external constant %struct.bignum_st, align 1
@ossl_bignum_ffdhe3072_q = external constant %struct.bignum_st, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ffdhe4096\00", align 1
@ossl_bignum_ffdhe4096_p = external constant %struct.bignum_st, align 1
@ossl_bignum_ffdhe4096_q = external constant %struct.bignum_st, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ffdhe6144\00", align 1
@ossl_bignum_ffdhe6144_p = external constant %struct.bignum_st, align 1
@ossl_bignum_ffdhe6144_q = external constant %struct.bignum_st, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ffdhe8192\00", align 1
@ossl_bignum_ffdhe8192_p = external constant %struct.bignum_st, align 1
@ossl_bignum_ffdhe8192_q = external constant %struct.bignum_st, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"modp_1536\00", align 1
@ossl_bignum_modp_1536_p = external constant %struct.bignum_st, align 1
@ossl_bignum_modp_1536_q = external constant %struct.bignum_st, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"modp_2048\00", align 1
@ossl_bignum_modp_2048_p = external constant %struct.bignum_st, align 1
@ossl_bignum_modp_2048_q = external constant %struct.bignum_st, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"modp_3072\00", align 1
@ossl_bignum_modp_3072_p = external constant %struct.bignum_st, align 1
@ossl_bignum_modp_3072_q = external constant %struct.bignum_st, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"modp_4096\00", align 1
@ossl_bignum_modp_4096_p = external constant %struct.bignum_st, align 1
@ossl_bignum_modp_4096_q = external constant %struct.bignum_st, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"modp_6144\00", align 1
@ossl_bignum_modp_6144_p = external constant %struct.bignum_st, align 1
@ossl_bignum_modp_6144_q = external constant %struct.bignum_st, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"modp_8192\00", align 1
@ossl_bignum_modp_8192_p = external constant %struct.bignum_st, align 1
@ossl_bignum_modp_8192_q = external constant %struct.bignum_st, align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"dh_1024_160\00", align 1
@ossl_bignum_dh1024_160_p = external constant %struct.bignum_st, align 1
@ossl_bignum_dh1024_160_q = external constant %struct.bignum_st, align 1
@ossl_bignum_dh1024_160_g = external constant %struct.bignum_st, align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"dh_2048_224\00", align 1
@ossl_bignum_dh2048_224_p = external constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_224_q = external constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_224_g = external constant %struct.bignum_st, align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"dh_2048_256\00", align 1
@ossl_bignum_dh2048_256_p = external constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_256_q = external constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_256_g = external constant %struct.bignum_st, align 1

; Function Attrs: nofree noinline nounwind readonly uwtable
define %struct.dh_named_group_st* @ossl_ffc_name_to_dh_named_group(i8* noundef readonly %name) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef %name) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %cleanup, label %for.cond

for.cond:                                         ; preds = %entry
  %call.1 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.1 = icmp eq i32 %call.1, 0
  br i1 %cmp2.1, label %cleanup, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.2 = icmp eq i32 %call.2, 0
  br i1 %cmp2.2, label %cleanup, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.3 = icmp eq i32 %call.3, 0
  br i1 %cmp2.3, label %cleanup, label %for.cond.3

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.4 = icmp eq i32 %call.4, 0
  br i1 %cmp2.4, label %cleanup, label %for.cond.4

for.cond.4:                                       ; preds = %for.cond.3
  %call.5 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.5 = icmp eq i32 %call.5, 0
  br i1 %cmp2.5, label %cleanup, label %for.cond.5

for.cond.5:                                       ; preds = %for.cond.4
  %call.6 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.6 = icmp eq i32 %call.6, 0
  br i1 %cmp2.6, label %cleanup, label %for.cond.6

for.cond.6:                                       ; preds = %for.cond.5
  %call.7 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.7 = icmp eq i32 %call.7, 0
  br i1 %cmp2.7, label %cleanup, label %for.cond.7

for.cond.7:                                       ; preds = %for.cond.6
  %call.8 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.8 = icmp eq i32 %call.8, 0
  br i1 %cmp2.8, label %cleanup, label %for.cond.8

for.cond.8:                                       ; preds = %for.cond.7
  %call.9 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.9 = icmp eq i32 %call.9, 0
  br i1 %cmp2.9, label %cleanup, label %for.cond.9

for.cond.9:                                       ; preds = %for.cond.8
  %call.10 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.10 = icmp eq i32 %call.10, 0
  br i1 %cmp2.10, label %cleanup, label %for.cond.10

for.cond.10:                                      ; preds = %for.cond.9
  %call.11 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.11 = icmp eq i32 %call.11, 0
  br i1 %cmp2.11, label %cleanup, label %for.cond.11

for.cond.11:                                      ; preds = %for.cond.10
  %call.12 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.12 = icmp eq i32 %call.12, 0
  br i1 %cmp2.12, label %cleanup, label %for.cond.12

for.cond.12:                                      ; preds = %for.cond.11
  %call.13 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* noundef %name) #6
  %cmp2.13 = icmp eq i32 %call.13, 0
  %spec.select = select i1 %cmp2.13, %struct.dh_named_group_st* getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 13), %struct.dh_named_group_st* null
  br label %cleanup

cleanup:                                          ; preds = %for.cond.12, %for.cond.11, %for.cond.10, %for.cond.9, %for.cond.8, %for.cond.7, %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %entry
  %retval.0 = phi %struct.dh_named_group_st* [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 0), %entry ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 1), %for.cond ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 2), %for.cond.1 ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 3), %for.cond.2 ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 4), %for.cond.3 ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 5), %for.cond.4 ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 6), %for.cond.5 ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 7), %for.cond.6 ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 8), %for.cond.7 ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 9), %for.cond.8 ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 10), %for.cond.9 ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 11), %for.cond.10 ], [ getelementptr inbounds ([14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 12), %for.cond.11 ], [ %spec.select, %for.cond.12 ]
  ret %struct.dh_named_group_st* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define %struct.dh_named_group_st* @ossl_ffc_uid_to_dh_named_group(i32 noundef %uid) local_unnamed_addr #2 {
entry:
  switch i32 %uid, label %cleanup [
    i32 1126, label %if.then
    i32 1127, label %if.then.fold.split
    i32 1128, label %if.then.fold.split11
    i32 1129, label %if.then.fold.split12
    i32 1130, label %if.then.fold.split13
    i32 1212, label %if.then.fold.split14
    i32 1213, label %if.then.fold.split15
    i32 1214, label %if.then.fold.split16
    i32 1215, label %if.then.fold.split17
    i32 1216, label %if.then.fold.split18
    i32 1217, label %if.then.fold.split19
    i32 1, label %if.then.fold.split20
    i32 2, label %if.then.fold.split21
    i32 3, label %if.then.fold.split22
  ]

if.then.fold.split:                               ; preds = %entry
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %entry, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split
  %i.09.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split11 ], [ 3, %if.then.fold.split12 ], [ 4, %if.then.fold.split13 ], [ 5, %if.then.fold.split14 ], [ 6, %if.then.fold.split15 ], [ 7, %if.then.fold.split16 ], [ 8, %if.then.fold.split17 ], [ 9, %if.then.fold.split18 ], [ 10, %if.then.fold.split19 ], [ 11, %if.then.fold.split20 ], [ 12, %if.then.fold.split21 ], [ 13, %if.then.fold.split22 ]
  %arrayidx = getelementptr inbounds [14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 %i.09.lcssa
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.dh_named_group_st* [ %arrayidx, %if.then ], [ null, %entry ]
  ret %struct.dh_named_group_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.dh_named_group_st* @ossl_ffc_numbers_to_dh_named_group(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %q, %struct.bignum_st* noundef %g) local_unnamed_addr #3 {
entry:
  %cmp8 = icmp eq %struct.bignum_st* %q, null
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.027 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  %p1 = getelementptr inbounds [14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 %i.027, i32 3
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p1, align 8, !tbaa !4
  %call = tail call i32 @BN_cmp(%struct.bignum_st* noundef %p, %struct.bignum_st* noundef %0) #7
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g4 = getelementptr inbounds [14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 %i.027, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g4, align 8, !tbaa !10
  %call5 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %g, %struct.bignum_st* noundef %1) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true7, label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true
  br i1 %cmp8, label %cleanup.split.loop.exit21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %q10 = getelementptr inbounds [14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 %i.027, i32 4
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q10, align 8, !tbaa !11
  %call11 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %q, %struct.bignum_st* noundef %2) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cleanup.split.loop.exit23, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %lor.lhs.false
  %inc = add nuw nsw i64 %i.027, 1
  %exitcond.not = icmp eq i64 %inc, 14
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !12

cleanup.split.loop.exit21:                        ; preds = %land.lhs.true7
  %arrayidx.le25 = getelementptr inbounds [14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 %i.027
  br label %cleanup

cleanup.split.loop.exit23:                        ; preds = %lor.lhs.false
  %arrayidx.le = getelementptr inbounds [14 x %struct.dh_named_group_st], [14 x %struct.dh_named_group_st]* @dh_named_groups, i64 0, i64 %i.027
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %cleanup.split.loop.exit23, %cleanup.split.loop.exit21
  %retval.0 = phi %struct.dh_named_group_st* [ %arrayidx.le25, %cleanup.split.loop.exit21 ], [ %arrayidx.le, %cleanup.split.loop.exit23 ], [ null, %for.inc ]
  ret %struct.dh_named_group_st* %retval.0
}

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_ffc_named_group_get_uid(%struct.dh_named_group_st* noundef readonly %group) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.dh_named_group_st* %group, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %uid = getelementptr inbounds %struct.dh_named_group_st, %struct.dh_named_group_st* %group, i64 0, i32 1
  %0 = load i32, i32* %uid, align 8, !tbaa !14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %0, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ossl_ffc_named_group_get_name(%struct.dh_named_group_st* noundef readonly %group) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.dh_named_group_st* %group, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.dh_named_group_st, %struct.dh_named_group_st* %group, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %0, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @ossl_ffc_named_group_get_q(%struct.dh_named_group_st* noundef readonly %group) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.dh_named_group_st* %group, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %q = getelementptr inbounds %struct.dh_named_group_st, %struct.dh_named_group_st* %group, i64 0, i32 4
  %0 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.bignum_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_named_group_set_pqg(%struct.ffc_params_st* noundef %ffc, %struct.dh_named_group_st* noundef readonly %group) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.ffc_params_st* %ffc, null
  %cmp1 = icmp eq %struct.dh_named_group_st* %group, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.dh_named_group_st, %struct.dh_named_group_st* %group, i64 0, i32 3
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !4
  %q = getelementptr inbounds %struct.dh_named_group_st, %struct.dh_named_group_st* %group, i64 0, i32 4
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !11
  %g = getelementptr inbounds %struct.dh_named_group_st, %struct.dh_named_group_st* %group, i64 0, i32 5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !10
  tail call void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef nonnull %ffc, %struct.bignum_st* noundef %0, %struct.bignum_st* noundef %1, %struct.bignum_st* noundef %2) #7
  %nid = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %ffc, i64 0, i32 7
  store i32 0, i32* %nid, align 4, !tbaa !16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @ossl_ffc_params_set0_pqg(%struct.ffc_params_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

attributes #0 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 16}
!5 = !{!"dh_named_group_st", !6, i64 0, !9, i64 8, !9, i64 12, !6, i64 16, !6, i64 24, !6, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 32}
!11 = !{!5, !6, i64 24}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!5, !9, i64 8}
!15 = !{!5, !6, i64 0}
!16 = !{!17, !9, i64 52}
!17 = !{!"ffc_params_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !18, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !6, i64 72, !6, i64 80}
!18 = !{!"long", !7, i64 0}
