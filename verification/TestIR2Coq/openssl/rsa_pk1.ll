; ModuleID = 'crypto/rsa/rsa_pk1.c'
source_filename = "crypto/rsa/rsa_pk1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/rsa/rsa_pk1.c\00", align 1
@__func__.RSA_padding_add_PKCS1_type_1 = private unnamed_addr constant [29 x i8] c"RSA_padding_add_PKCS1_type_1\00", align 1
@__func__.RSA_padding_check_PKCS1_type_1 = private unnamed_addr constant [31 x i8] c"RSA_padding_check_PKCS1_type_1\00", align 1
@__func__.ossl_rsa_padding_add_PKCS1_type_2_ex = private unnamed_addr constant [37 x i8] c"ossl_rsa_padding_add_PKCS1_type_2_ex\00", align 1
@__func__.RSA_padding_check_PKCS1_type_2 = private unnamed_addr constant [31 x i8] c"RSA_padding_check_PKCS1_type_2\00", align 1
@__func__.ossl_rsa_padding_check_PKCS1_type_2_TLS = private unnamed_addr constant [40 x i8] c"ossl_rsa_padding_check_PKCS1_type_2_TLS\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_add_PKCS1_type_1(i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen) local_unnamed_addr #0 {
entry:
  %sub = add nsw i32 %tlen, -11
  %cmp = icmp slt i32 %sub, %flen
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.RSA_padding_add_PKCS1_type_1, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %to, i64 1
  store i8 0, i8* %to, align 1, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds i8, i8* %to, i64 2
  store i8 1, i8* %incdec.ptr, align 1, !tbaa !4
  %sub2 = add nsw i32 %tlen, -3
  %sub3 = sub i32 %sub2, %flen
  %conv = sext i32 %sub3 to i64
  %call = tail call i8* @memset(i8* noundef nonnull %incdec.ptr1, i32 noundef 255, i64 noundef %conv) #6
  %add.ptr = getelementptr inbounds i8, i8* %incdec.ptr1, i64 %conv
  %incdec.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8 0, i8* %add.ptr, align 1, !tbaa !4
  %conv5 = zext i32 %flen to i64
  %call6 = tail call i8* @memcpy(i8* noundef nonnull %incdec.ptr4, i8* noundef %from, i64 noundef %conv5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_check_PKCS1_type_1(i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %num, 11
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %num, %flen
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %0 = load i8, i8* %from, align 1, !tbaa !4
  %cmp3.not = icmp eq i8 %0, 0
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then2
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_check_PKCS1_type_1, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 138, i8* noundef null) #6
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %incdec.ptr = getelementptr inbounds i8, i8* %from, i64 1
  %dec = add nsw i32 %num, -1
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %flen.addr.0 = phi i32 [ %dec, %if.end6 ], [ %flen, %if.end ]
  %p.0 = phi i8* [ %incdec.ptr, %if.end6 ], [ %from, %if.end ]
  %add = add nsw i32 %flen.addr.0, 1
  %cmp8.not = icmp eq i32 %add, %num
  br i1 %cmp8.not, label %lor.lhs.false, label %if.then14

lor.lhs.false:                                    ; preds = %if.end7
  %1 = load i8, i8* %p.0, align 1, !tbaa !4
  %cmp12.not = icmp eq i8 %1, 1
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_check_PKCS1_type_1, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 106, i8* noundef null) #6
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %sub = add i32 %flen.addr.0, -1
  %cmp1678 = icmp sgt i32 %flen.addr.0, 1
  br i1 %cmp1678, label %for.body, label %for.end.thread90

for.body:                                         ; preds = %if.end15, %if.end27
  %p.0.pn80 = phi i8* [ %p.181, %if.end27 ], [ %p.0, %if.end15 ]
  %i.079 = phi i32 [ %inc, %if.end27 ], [ 0, %if.end15 ]
  %p.181 = getelementptr inbounds i8, i8* %p.0.pn80, i64 1
  %2 = load i8, i8* %p.181, align 1, !tbaa !4
  switch i8 %2, label %if.else [
    i8 -1, label %if.end27
    i8 0, label %for.end
  ]

if.else:                                          ; preds = %for.body
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_check_PKCS1_type_1, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 102, i8* noundef null) #6
  br label %cleanup

if.end27:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %if.then31, label %for.body, !llvm.loop !7

for.end:                                          ; preds = %for.body
  %incdec.ptr26 = getelementptr inbounds i8, i8* %p.0.pn80, i64 2
  %cmp29 = icmp eq i32 %i.079, %sub
  br i1 %cmp29, label %if.then31, label %if.end32

for.end.thread90:                                 ; preds = %if.end15
  %cmp2993 = icmp eq i32 %sub, 0
  br i1 %cmp2993, label %if.then31, label %if.then35

if.then31:                                        ; preds = %if.end27, %for.end.thread90, %for.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_check_PKCS1_type_1, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 113, i8* noundef null) #6
  br label %cleanup

if.end32:                                         ; preds = %for.end
  %cmp33 = icmp ult i32 %i.079, 8
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.end.thread90, %if.end32
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_check_PKCS1_type_1, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 103, i8* noundef null) #6
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %inc37.neg = xor i32 %i.079, -1
  %sub38 = add i32 %sub, %inc37.neg
  %cmp39 = icmp sgt i32 %sub38, %tlen
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end36
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_check_PKCS1_type_1, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 109, i8* noundef null) #6
  br label %cleanup

if.end42:                                         ; preds = %if.end36
  %conv43 = zext i32 %sub38 to i64
  %call = tail call i8* @memcpy(i8* noundef %to, i8* noundef nonnull %incdec.ptr26, i64 noundef %conv43) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end42, %if.then41, %if.then35, %if.then31, %if.else, %if.then14, %if.then5
  %retval.0 = phi i32 [ -1, %if.then5 ], [ -1, %if.then14 ], [ -1, %if.then31 ], [ -1, %if.then35 ], [ -1, %if.then41 ], [ %sub38, %if.end42 ], [ -1, %if.else ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_padding_add_PKCS1_type_2_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen) local_unnamed_addr #0 {
entry:
  %sub = add nsw i32 %tlen, -11
  %cmp = icmp slt i32 %sub, %flen
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.ossl_rsa_padding_add_PKCS1_type_2_ex, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, i8* noundef null) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %flen, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.else
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.ossl_rsa_padding_add_PKCS1_type_2_ex, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 181, i8* noundef null) #6
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %incdec.ptr = getelementptr inbounds i8, i8* %to, i64 1
  store i8 0, i8* %to, align 1, !tbaa !4
  %incdec.ptr4 = getelementptr inbounds i8, i8* %to, i64 2
  store i8 2, i8* %incdec.ptr, align 1, !tbaa !4
  %sub5 = add nsw i32 %tlen, -3
  %sub6 = sub i32 %sub5, %flen
  %conv = sext i32 %sub6 to i64
  %call = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %incdec.ptr4, i64 noundef %conv, i32 noundef 0) #6
  %cmp7 = icmp slt i32 %call, 1
  br i1 %cmp7, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end3
  %cmp1151 = icmp sgt i32 %sub6, 0
  br i1 %cmp1151, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %if.end25
  %p.053 = phi i8* [ %incdec.ptr26, %if.end25 ], [ %incdec.ptr4, %for.cond.preheader ]
  %i.052 = phi i32 [ %inc, %if.end25 ], [ 0, %for.cond.preheader ]
  %0 = load i8, i8* %p.053, align 1, !tbaa !4
  %cmp14 = icmp eq i8 %0, 0
  br i1 %cmp14, label %do.body, label %if.end25

do.body:                                          ; preds = %for.body, %do.cond
  %call17 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %p.053, i64 noundef 1, i32 noundef 0) #6
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %cleanup, label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i8, i8* %p.053, align 1, !tbaa !4
  %cmp23 = icmp eq i8 %1, 0
  br i1 %cmp23, label %do.body, label %if.end25, !llvm.loop !9

if.end25:                                         ; preds = %do.cond, %for.body
  %incdec.ptr26 = getelementptr inbounds i8, i8* %p.053, i64 1
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %sub6
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !10

for.end:                                          ; preds = %if.end25, %for.cond.preheader
  %p.0.lcssa = phi i8* [ %incdec.ptr4, %for.cond.preheader ], [ %incdec.ptr26, %if.end25 ]
  %incdec.ptr27 = getelementptr inbounds i8, i8* %p.0.lcssa, i64 1
  store i8 0, i8* %p.0.lcssa, align 1, !tbaa !4
  %conv28 = zext i32 %flen to i64
  %call29 = tail call i8* @memcpy(i8* noundef nonnull %incdec.ptr27, i8* noundef %from, i64 noundef %conv28) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end3, %for.end, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 1, %for.end ], [ 0, %if.end3 ], [ 0, %do.body ]
  ret i32 %retval.0
}

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_add_PKCS1_type_2(i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_rsa_padding_add_PKCS1_type_2_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_check_PKCS1_type_2(i8* nocapture noundef %to, i32 noundef %tlen, i8* nocapture noundef readonly %from, i32 noundef %flen, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %tlen, 1
  %cmp1 = icmp slt i32 %flen, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp sgt i32 %flen, %num
  %cmp4 = icmp slt i32 %num, 11
  %or.cond107 = or i1 %cmp2, %cmp4
  br i1 %or.cond107, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_check_PKCS1_type_2, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 159, i8* noundef null) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %conv187 = zext i32 %num to i64
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %conv187, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 190) #6
  %cmp7 = icmp eq i8* %call, null
  br i1 %cmp7, label %if.then9, label %for.body.preheader

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_check_PKCS1_type_2, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

for.body.preheader:                               ; preds = %if.end6
  %add.ptr12 = getelementptr inbounds i8, i8* %call, i64 %conv187
  %idx.ext188 = zext i32 %flen to i64
  %add.ptr = getelementptr inbounds i8, i8* %from, i64 %idx.ext188
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %em.0193 = phi i8* [ %incdec.ptr, %for.body ], [ %add.ptr12, %for.body.preheader ]
  %i.0192 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %flen.addr.0191 = phi i32 [ %sub, %for.body ], [ %flen, %for.body.preheader ]
  %from.addr.0190 = phi i8* [ %add.ptr18, %for.body ], [ %add.ptr, %for.body.preheader ]
  %call15 = tail call fastcc i32 @constant_time_is_zero(i32 noundef %flen.addr.0191) #7
  %neg = xor i32 %call15, -1
  %and = and i32 %neg, 1
  %sub = sub i32 %flen.addr.0191, %and
  %idx.ext17 = zext i32 %and to i64
  %idx.neg = sub nsw i64 0, %idx.ext17
  %add.ptr18 = getelementptr inbounds i8, i8* %from.addr.0190, i64 %idx.neg
  %0 = load i8, i8* %add.ptr18, align 1, !tbaa !4
  %1 = trunc i32 %neg to i8
  %conv21 = and i8 %0, %1
  %incdec.ptr = getelementptr inbounds i8, i8* %em.0193, i64 -1
  store i8 %conv21, i8* %incdec.ptr, align 1, !tbaa !4
  %inc = add nuw nsw i32 %i.0192, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.body
  %conv22 = zext i8 %conv21 to i32
  %call23 = tail call fastcc i32 @constant_time_is_zero(i32 noundef %conv22) #7
  %2 = load i8, i8* %em.0193, align 1, !tbaa !4
  %conv25 = zext i8 %2 to i32
  %call26 = tail call fastcc i32 @constant_time_eq(i32 noundef %conv25, i32 noundef 2) #7
  %and27 = and i32 %call26, %call23
  %cmp29194 = icmp sgt i32 %num, 2
  br i1 %cmp29194, label %for.body31, label %for.end40

for.body31:                                       ; preds = %for.end, %for.body31
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body31 ], [ 2, %for.end ]
  %zero_index.0197 = phi i32 [ %call37, %for.body31 ], [ 0, %for.end ]
  %found_zero_byte.0196 = phi i32 [ %or, %for.body31 ], [ 0, %for.end ]
  %arrayidx32 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %indvars.iv
  %3 = load i8, i8* %arrayidx32, align 1, !tbaa !4
  %conv33 = zext i8 %3 to i32
  %call34 = tail call fastcc i32 @constant_time_is_zero(i32 noundef %conv33) #7
  %neg35 = xor i32 %found_zero_byte.0196, -1
  %and36 = and i32 %call34, %neg35
  %4 = trunc i64 %indvars.iv to i32
  %call37 = tail call fastcc i32 @constant_time_select_int(i32 noundef %and36, i32 noundef %4, i32 noundef %zero_index.0197) #7
  %or = or i32 %call34, %found_zero_byte.0196
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond207.not = icmp eq i64 %indvars.iv.next, %conv187
  br i1 %exitcond207.not, label %for.end40, label %for.body31, !llvm.loop !12

for.end40:                                        ; preds = %for.body31, %for.end
  %zero_index.0.lcssa = phi i32 [ 0, %for.end ], [ %call37, %for.body31 ]
  %call41 = tail call fastcc i32 @constant_time_ge(i32 noundef %zero_index.0.lcssa, i32 noundef 10) #7
  %and42 = and i32 %and27, %call41
  %add.neg = xor i32 %zero_index.0.lcssa, -1
  %sub43 = add i32 %add.neg, %num
  %call44 = tail call fastcc i32 @constant_time_ge(i32 noundef %tlen, i32 noundef %sub43) #7
  %and45 = and i32 %and42, %call44
  %sub46 = add nsw i32 %num, -11
  %call47 = tail call fastcc i32 @constant_time_lt(i32 noundef %sub46, i32 noundef %tlen) #7, !range !13
  %call49 = tail call fastcc i32 @constant_time_select_int(i32 noundef %call47, i32 noundef %sub46, i32 noundef %tlen) #7
  %cmp52201 = icmp sgt i32 %num, 12
  br i1 %cmp52201, label %for.body54.lr.ph, label %for.cond79.preheader

for.body54.lr.ph:                                 ; preds = %for.end40
  %sub56 = sub nsw i32 %sub46, %sub43
  br label %for.body54

for.cond79.preheader:                             ; preds = %for.inc77, %for.end40
  %cmp80204 = icmp sgt i32 %call49, 0
  br i1 %cmp80204, label %for.body82.preheader, label %for.end96

for.body82.preheader:                             ; preds = %for.cond79.preheader
  %wide.trip.count218 = zext i32 %call49 to i64
  br label %for.body82

for.body54:                                       ; preds = %for.body54.lr.ph, %for.inc77
  %msg_index.0202 = phi i32 [ 1, %for.body54.lr.ph ], [ %shl, %for.inc77 ]
  %sub61 = sub i32 %num, %msg_index.0202
  %cmp62199 = icmp sgt i32 %sub61, 11
  br i1 %cmp62199, label %for.body64.lr.ph, label %for.inc77

for.body64.lr.ph:                                 ; preds = %for.body54
  %and57 = and i32 %msg_index.0202, %sub56
  %call58 = tail call fastcc i32 @constant_time_eq(i32 noundef %and57, i32 noundef 0) #7
  %5 = trunc i32 %call58 to i8
  %conv65 = xor i8 %5, -1
  %6 = sext i32 %msg_index.0202 to i64
  %wide.trip.count212 = zext i32 %sub61 to i64
  br label %for.body64

for.body64:                                       ; preds = %for.body64.lr.ph, %for.body64
  %indvars.iv208 = phi i64 [ 11, %for.body64.lr.ph ], [ %indvars.iv.next209, %for.body64 ]
  %7 = add nsw i64 %indvars.iv208, %6
  %arrayidx68 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %7
  %8 = load i8, i8* %arrayidx68, align 1, !tbaa !4
  %arrayidx70 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %indvars.iv208
  %9 = load i8, i8* %arrayidx70, align 1, !tbaa !4
  %call71 = tail call fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %conv65, i8 noundef zeroext %8, i8 noundef zeroext %9) #7
  store i8 %call71, i8* %arrayidx70, align 1, !tbaa !4
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1
  %exitcond213.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count212
  br i1 %exitcond213.not, label %for.inc77, label %for.body64, !llvm.loop !14

for.inc77:                                        ; preds = %for.body64, %for.body54
  %shl = shl i32 %msg_index.0202, 1
  %cmp52 = icmp slt i32 %shl, %sub46
  br i1 %cmp52, label %for.body54, label %for.cond79.preheader, !llvm.loop !15

for.body82:                                       ; preds = %for.body82.preheader, %for.body82
  %indvars.iv214 = phi i64 [ 0, %for.body82.preheader ], [ %indvars.iv.next215, %for.body82 ]
  %10 = trunc i64 %indvars.iv214 to i32
  %call83 = tail call fastcc i32 @constant_time_lt(i32 noundef %10, i32 noundef %sub43) #7
  %and84 = and i32 %call83, %and45
  %conv85 = trunc i32 %and84 to i8
  %11 = add nuw nsw i64 %indvars.iv214, 11
  %arrayidx88 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %11
  %12 = load i8, i8* %arrayidx88, align 1, !tbaa !4
  %arrayidx90 = getelementptr inbounds i8, i8* %to, i64 %indvars.iv214
  %13 = load i8, i8* %arrayidx90, align 1, !tbaa !4
  %call91 = tail call fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %conv85, i8 noundef zeroext %12, i8 noundef zeroext %13) #7
  store i8 %call91, i8* %arrayidx90, align 1, !tbaa !4
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1
  %exitcond219.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count218
  br i1 %exitcond219.not, label %for.end96, label %for.body82, !llvm.loop !16

for.end96:                                        ; preds = %for.body82, %for.cond79.preheader
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %incdec.ptr, i64 noundef %conv187, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 262) #6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.RSA_padding_check_PKCS1_type_2, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 159, i8* noundef null) #6
  %and98 = and i32 %and45, 1
  tail call void @err_clear_last_constant_time(i32 noundef %and98) #6
  %call99 = tail call fastcc i32 @constant_time_select_int(i32 noundef %and45, i32 noundef %sub43, i32 noundef -1) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end96, %if.then9, %if.then5
  %retval.0 = phi i32 [ -1, %if.then5 ], [ -1, %if.then9 ], [ %call99, %for.end96 ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_is_zero(i32 noundef %a) unnamed_addr #4 {
entry:
  %neg = xor i32 %a, -1
  %sub = add i32 %a, -1
  %and = and i32 %sub, %neg
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %and) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_eq(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
entry:
  %xor = xor i32 %b, %a
  %call = tail call fastcc i32 @constant_time_is_zero(i32 noundef %xor) #7
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select_int(i32 noundef %mask, i32 noundef %a, i32 noundef %b) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a, i32 noundef %b) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_ge(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @constant_time_lt(i32 noundef %a, i32 noundef %b) #7
  %neg = xor i32 %call, -1
  ret i32 %neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_lt(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
entry:
  %xor = xor i32 %b, %a
  %sub = sub i32 %a, %b
  %xor1 = xor i32 %sub, %b
  %or = or i32 %xor1, %xor
  %xor2 = xor i32 %or, %a
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %xor2) #7
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %mask, i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #5 {
entry:
  %conv = zext i8 %mask to i32
  %conv1 = zext i8 %a to i32
  %conv2 = zext i8 %b to i32
  %call = tail call fastcc i32 @constant_time_select(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #7
  %conv3 = trunc i32 %call to i8
  ret i8 %conv3
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @err_clear_last_constant_time(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_padding_check_PKCS1_type_2_TLS(%struct.ossl_lib_ctx_st* noundef %libctx, i8* nocapture noundef writeonly %to, i64 noundef %tlen, i8* nocapture noundef readonly %from, i64 noundef %flen, i32 noundef %client_version, i32 noundef %alt_version) local_unnamed_addr #0 {
entry:
  %rand_premaster_secret = alloca [48 x i8], align 16
  %0 = getelementptr inbounds [48 x i8], [48 x i8]* %rand_premaster_secret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #8
  %cmp = icmp ult i64 %flen, 59
  %cmp1 = icmp ult i64 %tlen, 48
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.ossl_rsa_padding_check_PKCS1_type_2_TLS, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 159, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %0, i64 noundef 48, i32 noundef 0) #6
  %cmp2 = icmp slt i32 %call, 1
  br i1 %cmp2, label %if.then3, label %for.body.preheader

if.then3:                                         ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.ossl_rsa_padding_check_PKCS1_type_2_TLS, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, i8* noundef null) #6
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %1 = load i8, i8* %from, align 1, !tbaa !4
  %conv = zext i8 %1 to i32
  %call5 = call fastcc i32 @constant_time_is_zero(i32 noundef %conv) #7
  %arrayidx6 = getelementptr inbounds i8, i8* %from, i64 1
  %2 = load i8, i8* %arrayidx6, align 1, !tbaa !4
  %conv7 = zext i8 %2 to i32
  %call8 = call fastcc i32 @constant_time_eq(i32 noundef %conv7, i32 noundef 2) #7
  %and = and i32 %call8, %call5
  %sub10 = add i64 %flen, -49
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %conv9113 = phi i64 [ %conv9, %for.body ], [ 2, %for.body.preheader ]
  %good.0112 = phi i32 [ %and17, %for.body ], [ %and, %for.body.preheader ]
  %arrayidx13 = getelementptr inbounds i8, i8* %from, i64 %conv9113
  %3 = load i8, i8* %arrayidx13, align 1, !tbaa !4
  %conv14 = zext i8 %3 to i32
  %call15 = call fastcc zeroext i8 @constant_time_is_zero_8(i32 noundef %conv14) #7
  %conv16 = zext i8 %call15 to i32
  %neg = xor i32 %conv16, -1
  %and17 = and i32 %good.0112, %neg
  %inc = add nuw nsw i64 %conv9113, 1
  %conv9 = and i64 %inc, 4294967295
  %cmp11 = icmp ugt i64 %sub10, %conv9
  br i1 %cmp11, label %for.body, label %for.end, !llvm.loop !17

for.end:                                          ; preds = %for.body
  %sub.le = add i64 %flen, -48
  %arrayidx20 = getelementptr inbounds i8, i8* %from, i64 %sub10
  %4 = load i8, i8* %arrayidx20, align 1, !tbaa !4
  %conv21 = zext i8 %4 to i32
  %call22 = call fastcc zeroext i8 @constant_time_is_zero_8(i32 noundef %conv21) #7
  %conv23 = zext i8 %call22 to i32
  %and24 = and i32 %and17, %conv23
  %arrayidx26 = getelementptr inbounds i8, i8* %from, i64 %sub.le
  %5 = load i8, i8* %arrayidx26, align 1, !tbaa !4
  %conv27 = zext i8 %5 to i32
  %6 = lshr i32 %client_version, 8
  %and28 = and i32 %6, 255
  %call29 = call fastcc i32 @constant_time_eq(i32 noundef %conv27, i32 noundef %and28) #7
  %add = add i64 %flen, -47
  %arrayidx31 = getelementptr inbounds i8, i8* %from, i64 %add
  %7 = load i8, i8* %arrayidx31, align 1, !tbaa !4
  %conv32 = zext i8 %7 to i32
  %and33 = and i32 %client_version, 255
  %call34 = call fastcc i32 @constant_time_eq(i32 noundef %conv32, i32 noundef %and33) #7
  %and35 = and i32 %call34, %call29
  %cmp36 = icmp sgt i32 %alt_version, 0
  br i1 %cmp36, label %if.then38, label %if.end52

if.then38:                                        ; preds = %for.end
  %8 = lshr i32 %alt_version, 8
  %and43 = and i32 %8, 255
  %call44 = call fastcc i32 @constant_time_eq(i32 noundef %conv27, i32 noundef %and43) #7
  %and49 = and i32 %alt_version, 255
  %call50 = call fastcc i32 @constant_time_eq(i32 noundef %conv32, i32 noundef %and49) #7
  %and51 = and i32 %call50, %call44
  %or = or i32 %and51, %and35
  br label %if.end52

if.end52:                                         ; preds = %if.then38, %for.end
  %version_good.0 = phi i32 [ %or, %if.then38 ], [ %and35, %for.end ]
  %and53 = and i32 %and24, %version_good.0
  %conv58 = trunc i32 %and53 to i8
  br label %for.body57

for.body57:                                       ; preds = %if.end52, %for.body57
  %indvars.iv = phi i64 [ 0, %if.end52 ], [ %indvars.iv.next, %for.body57 ]
  %add61 = add i64 %sub.le, %indvars.iv
  %arrayidx62 = getelementptr inbounds i8, i8* %from, i64 %add61
  %9 = load i8, i8* %arrayidx62, align 1, !tbaa !4
  %arrayidx64 = getelementptr inbounds [48 x i8], [48 x i8]* %rand_premaster_secret, i64 0, i64 %indvars.iv
  %10 = load i8, i8* %arrayidx64, align 1, !tbaa !4
  %call65 = call fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %conv58, i8 noundef zeroext %9, i8 noundef zeroext %10) #7
  %arrayidx67 = getelementptr inbounds i8, i8* %to, i64 %indvars.iv
  store i8 %call65, i8* %arrayidx67, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %cleanup, label %for.body57, !llvm.loop !18

cleanup:                                          ; preds = %for.body57, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then3 ], [ 48, %for.body57 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i8 @constant_time_is_zero_8(i32 noundef %a) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @constant_time_is_zero(i32 noundef %a) #7
  %conv = trunc i32 %call to i8
  ret i8 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %a) unnamed_addr #4 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a, i32 noundef %b) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @value_barrier(i32 noundef %mask) #7
  %and = and i32 %call, %a
  %neg = xor i32 %mask, -1
  %call1 = tail call fastcc i32 @value_barrier(i32 noundef %neg) #7
  %and2 = and i32 %call1, %b
  %or = or i32 %and2, %and
  ret i32 %or
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @value_barrier(i32 noundef %a) unnamed_addr #5 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #9, !srcloc !19
  ret i32 %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = !{i32 -1, i32 1}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = !{i64 52057}
