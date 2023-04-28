; ModuleID = 'crypto/bn/bn_const.c'
source_filename = "crypto/bn/bn_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type opaque

@BN_get_rfc2409_prime_768.RFC2409_PRIME_768 = internal constant [96 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\C9\0F\DA\A2!h\C24\C4\C6b\8B\80\DC\1C\D1)\02N\08\8Ag\CCt\02\0B\BE\A6;\13\9B\22QJ\08y\8E4\04\DD\EF\95\19\B3\CD:C\1B0+\0Am\F2_\147O\E15mmQ\C2E\E4\85\B5vb^~\C6\F4LB\E9\A6:6 \FF\FF\FF\FF\FF\FF\FF\FF", align 16
@BN_get_rfc2409_prime_1024.RFC2409_PRIME_1024 = internal constant [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\C9\0F\DA\A2!h\C24\C4\C6b\8B\80\DC\1C\D1)\02N\08\8Ag\CCt\02\0B\BE\A6;\13\9B\22QJ\08y\8E4\04\DD\EF\95\19\B3\CD:C\1B0+\0Am\F2_\147O\E15mmQ\C2E\E4\85\B5vb^~\C6\F4LB\E9\A67\EDk\0B\FF\\\B6\F4\06\B7\ED\EE8k\FBZ\89\9F\A5\AE\9F$\11|K\1F\E6I(fQ\EC\E6S\81\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@ossl_bignum_modp_1536_p = external constant %struct.bignum_st, align 1
@ossl_bignum_modp_2048_p = external constant %struct.bignum_st, align 1
@ossl_bignum_modp_3072_p = external constant %struct.bignum_st, align 1
@ossl_bignum_modp_4096_p = external constant %struct.bignum_st, align 1
@ossl_bignum_modp_6144_p = external constant %struct.bignum_st, align 1
@ossl_bignum_modp_8192_p = external constant %struct.bignum_st, align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_get_rfc2409_prime_768(%struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @BN_get_rfc2409_prime_768.RFC2409_PRIME_768, i64 0, i64 0), i32 noundef 96, %struct.bignum_st* noundef %bn) #2
  ret %struct.bignum_st* %call
}

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_get_rfc2409_prime_1024(%struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @BN_get_rfc2409_prime_1024.RFC2409_PRIME_1024, i64 0, i64 0), i32 noundef 128, %struct.bignum_st* noundef %bn) #2
  ret %struct.bignum_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_get_rfc3526_prime_1536(%struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %bn, null
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %bn, %struct.bignum_st* noundef nonnull @ossl_bignum_modp_1536_p) #2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_modp_1536_p) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bignum_st* [ %call, %cond.true ], [ %call1, %cond.false ]
  ret %struct.bignum_st* %cond
}

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_get_rfc3526_prime_2048(%struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %bn, null
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %bn, %struct.bignum_st* noundef nonnull @ossl_bignum_modp_2048_p) #2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_modp_2048_p) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bignum_st* [ %call, %cond.true ], [ %call1, %cond.false ]
  ret %struct.bignum_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_get_rfc3526_prime_3072(%struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %bn, null
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %bn, %struct.bignum_st* noundef nonnull @ossl_bignum_modp_3072_p) #2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_modp_3072_p) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bignum_st* [ %call, %cond.true ], [ %call1, %cond.false ]
  ret %struct.bignum_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_get_rfc3526_prime_4096(%struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %bn, null
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %bn, %struct.bignum_st* noundef nonnull @ossl_bignum_modp_4096_p) #2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_modp_4096_p) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bignum_st* [ %call, %cond.true ], [ %call1, %cond.false ]
  ret %struct.bignum_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_get_rfc3526_prime_6144(%struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %bn, null
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %bn, %struct.bignum_st* noundef nonnull @ossl_bignum_modp_6144_p) #2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_modp_6144_p) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bignum_st* [ %call, %cond.true ], [ %call1, %cond.false ]
  ret %struct.bignum_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_get_rfc3526_prime_8192(%struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %bn, null
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %bn, %struct.bignum_st* noundef nonnull @ossl_bignum_modp_8192_p) #2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_modp_8192_p) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bignum_st* [ %call, %cond.true ], [ %call1, %cond.false ]
  ret %struct.bignum_st* %cond
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
