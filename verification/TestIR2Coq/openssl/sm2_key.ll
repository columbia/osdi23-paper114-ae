; ModuleID = 'crypto/sm2/sm2_key.c'
source_filename = "crypto/sm2/sm2_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_key_st = type opaque
%struct.ec_group_st = type opaque
%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/sm2/sm2_key.c\00", align 1
@__func__.ossl_sm2_key_private_check = private unnamed_addr constant [27 x i8] c"ossl_sm2_key_private_check\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sm2_key_private_check(%struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %eckey, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef nonnull %eckey) #2
  %cmp1 = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = tail call %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef nonnull %eckey) #2
  %cmp4 = icmp eq %struct.bignum_st* %call3, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %call6 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef nonnull %call) #2
  %cmp7 = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_sm2_key_private_check, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786690, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %call8 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %call6) #2
  %cmp9 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9, label %end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %call11 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef nonnull %call8, i64 noundef 1) #2
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %end, label %if.end13

if.end13:                                         ; preds = %lor.lhs.false10
  %call14 = tail call %struct.bignum_st* @BN_value_one() #2
  %call15 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef %call14) #2
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end13
  %call18 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef nonnull %call8) #2
  %cmp19 = icmp sgt i32 %call18, -1
  br i1 %cmp19, label %if.then20, label %end

if.then20:                                        ; preds = %lor.lhs.false17, %if.end13
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_sm2_key_private_check, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 113, i8* noundef null) #2
  br label %end

end:                                              ; preds = %lor.lhs.false17, %if.end, %lor.lhs.false10, %if.then20
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %if.then20 ], [ 0, %lor.lhs.false10 ], [ 1, %lor.lhs.false17 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call8) #2
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %end ]
  ret i32 %retval.0
}

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
