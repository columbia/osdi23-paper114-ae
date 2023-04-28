; ModuleID = 'crypto/evp/bio_b64.c'
source_filename = "crypto/evp/bio_b64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type opaque
%struct.evp_Encode_Ctx_st = type opaque

@methods_b64 = internal constant %struct.bio_method_st { i32 523, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @b64_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @b64_read, i32 (%struct.bio_st*, i8*)* @b64_puts, i32 (%struct.bio_st*, i8*, i32)* null, i64 (%struct.bio_st*, i32, i64, i8*)* @b64_ctrl, i32 (%struct.bio_st*)* @b64_new, i32 (%struct.bio_st*)* @b64_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @b64_callback_ctrl }, align 8
@.str = private unnamed_addr constant [16 x i8] c"base64 encoding\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"assertion failed: ctx->buf_off < (int)sizeof(ctx->buf)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"crypto/evp/bio_b64.c\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"assertion failed: ctx->buf_len <= (int)sizeof(ctx->buf)\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"assertion failed: ctx->buf_len >= ctx->buf_off\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"assertion failed: i <= n\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"assertion failed: ctx->buf_off <= (int)sizeof(ctx->buf)\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"assertion failed: ctx->tmp_len <= 3\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"assertion failed: ctx->buf_off + i < (int)sizeof(ctx->buf)\00", align 1
@__func__.b64_new = private unnamed_addr constant [8 x i8] c"b64_new\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_base64() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_b64
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @b64_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #2 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %cmp = icmp eq i8* %call, null
  %cmp2 = icmp eq %struct.bio_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  %encode = getelementptr inbounds i8, i8* %call, i64 16
  %0 = bitcast i8* %encode to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !4
  %cmp3.not = icmp eq i32 %1, 1
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %0, align 8, !tbaa !4
  %buf_len = bitcast i8* %call to i32*
  store i32 0, i32* %buf_len, align 8, !tbaa !10
  %buf_off = getelementptr inbounds i8, i8* %call, i64 4
  %2 = bitcast i8* %buf_off to i32*
  store i32 0, i32* %2, align 4, !tbaa !11
  %tmp_len = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %tmp_len to i32*
  store i32 0, i32* %3, align 8, !tbaa !12
  %base64 = getelementptr inbounds i8, i8* %call, i64 32
  %4 = bitcast i8* %base64 to %struct.evp_Encode_Ctx_st**
  %5 = load %struct.evp_Encode_Ctx_st*, %struct.evp_Encode_Ctx_st** %4, align 8, !tbaa !13
  tail call void @EVP_EncodeInit(%struct.evp_Encode_Ctx_st* noundef %5) #7
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then4
  %buf_off7 = getelementptr inbounds i8, i8* %call, i64 4
  %6 = bitcast i8* %buf_off7 to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !11
  %cmp8 = icmp slt i32 %7, 1502
  br i1 %cmp8, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end6
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 349) #8
  unreachable

cond.end:                                         ; preds = %if.end6
  %buf_len9 = bitcast i8* %call to i32*
  %8 = load i32, i32* %buf_len9, align 8, !tbaa !10
  %cmp10 = icmp slt i32 %8, 1503
  br i1 %cmp10, label %cond.end13, label %cond.false12

cond.false12:                                     ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 350) #8
  unreachable

cond.end13:                                       ; preds = %cond.end
  %cmp17.not = icmp slt i32 %8, %7
  br i1 %cmp17.not, label %cond.false19, label %cond.end20

cond.false19:                                     ; preds = %cond.end13
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 351) #8
  unreachable

cond.end20:                                       ; preds = %cond.end13
  %sub = sub nsw i32 %8, %7
  %cmp24417 = icmp sgt i32 %sub, 0
  br i1 %cmp24417, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %cond.end20
  %buf = getelementptr inbounds i8, i8* %call, i64 40
  br label %while.body

while.cond:                                       ; preds = %cond.end40
  %cmp24 = icmp sgt i32 %sub49, 0
  br i1 %cmp24, label %while.body, label %while.end, !llvm.loop !14

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %9 = phi i32 [ %7, %while.body.lr.ph ], [ %add, %while.cond ]
  %n.0418 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub49, %while.cond ]
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %idxprom
  %call26 = tail call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef nonnull %arrayidx, i32 noundef %n.0418) #7
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.body
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #7
  br label %cleanup

if.end29:                                         ; preds = %while.body
  %cmp30.not = icmp ult i32 %n.0418, %call26
  br i1 %cmp30.not, label %cond.false32, label %cond.end33

cond.false32:                                     ; preds = %if.end29
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 359) #8
  unreachable

cond.end33:                                       ; preds = %if.end29
  %10 = load i32, i32* %6, align 4, !tbaa !11
  %add = add nsw i32 %10, %call26
  store i32 %add, i32* %6, align 4, !tbaa !11
  %cmp37 = icmp slt i32 %add, 1503
  br i1 %cmp37, label %cond.end40, label %cond.false39

cond.false39:                                     ; preds = %cond.end33
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 361) #8
  unreachable

cond.end40:                                       ; preds = %cond.end33
  %11 = load i32, i32* %buf_len9, align 8, !tbaa !10
  %cmp44.not = icmp slt i32 %11, %add
  %sub49 = sub nsw i32 %n.0418, %call26
  br i1 %cmp44.not, label %cond.false46, label %while.cond

cond.false46:                                     ; preds = %cond.end40
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 362) #8
  unreachable

while.end:                                        ; preds = %while.cond, %cond.end20
  store i32 0, i32* %6, align 4, !tbaa !11
  store i32 0, i32* %buf_len9, align 8, !tbaa !10
  %cmp52 = icmp eq i8* %in, null
  %cmp54 = icmp slt i32 %inl, 1
  %or.cond233 = or i1 %cmp52, %cmp54
  br i1 %or.cond233, label %cleanup, label %while.body59.lr.ph

while.body59.lr.ph:                               ; preds = %while.end
  %tmp_len67 = getelementptr inbounds i8, i8* %call, i64 8
  %12 = bitcast i8* %tmp_len67 to i32*
  %buf126 = getelementptr inbounds i8, i8* %call, i64 40
  %tmp = getelementptr inbounds i8, i8* %call, i64 1542
  %base64148 = getelementptr inbounds i8, i8* %call, i64 32
  %13 = bitcast i8* %base64148 to %struct.evp_Encode_Ctx_st**
  br label %while.body59

while.body59:                                     ; preds = %while.body59.lr.ph, %while.end225
  %in.addr.0423 = phi i8* [ %in, %while.body59.lr.ph ], [ %add.ptr, %while.end225 ]
  %ret.0422 = phi i32 [ 0, %while.body59.lr.ph ], [ %ret.1, %while.end225 ]
  %inl.addr.0420 = phi i32 [ %inl, %while.body59.lr.ph ], [ %sub179, %while.end225 ]
  %14 = icmp ult i32 %inl.addr.0420, 1024
  %cond64 = select i1 %14, i32 %inl.addr.0420, i32 1024
  %call65 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %b, i32 noundef -1) #7
  %and = and i32 %call65, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else147, label %if.then66

if.then66:                                        ; preds = %while.body59
  %15 = load i32, i32* %12, align 8, !tbaa !12
  %cmp68 = icmp sgt i32 %15, 0
  br i1 %cmp68, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.then66
  %cmp71 = icmp ult i32 %15, 4
  br i1 %cmp71, label %cond.end74, label %cond.false73

cond.false73:                                     ; preds = %if.then69
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 377) #8
  unreachable

cond.end74:                                       ; preds = %if.then69
  %sub77 = sub nuw nsw i32 3, %15
  %cmp78 = icmp ugt i32 %sub77, %inl.addr.0420
  %spec.select = select i1 %cmp78, i32 1, i32 %sub77
  %idxprom82360 = zext i32 %15 to i64
  %arrayidx83 = getelementptr inbounds i8, i8* %tmp, i64 %idxprom82360
  %conv361 = zext i32 %spec.select to i64
  %call84 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx83, i8* noundef %in.addr.0423, i64 noundef %conv361) #7
  %16 = load i32, i32* %12, align 8, !tbaa !12
  %add86 = add nsw i32 %16, %spec.select
  store i32 %add86, i32* %12, align 8, !tbaa !12
  %add87 = add nsw i32 %spec.select, %ret.0422
  %cmp89 = icmp slt i32 %add86, 3
  br i1 %cmp89, label %cleanup, label %if.end92

if.end92:                                         ; preds = %cond.end74
  %call97 = tail call i32 @EVP_EncodeBlock(i8* noundef nonnull %buf126, i8* noundef nonnull %tmp, i32 noundef %add86) #7
  store i32 %call97, i32* %buf_len9, align 8, !tbaa !10
  %cmp100 = icmp slt i32 %call97, 1503
  br i1 %cmp100, label %cond.end104, label %cond.false103

cond.false103:                                    ; preds = %if.end92
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 392) #8
  unreachable

cond.end104:                                      ; preds = %if.end92
  %17 = load i32, i32* %6, align 4, !tbaa !11
  %cmp108.not = icmp slt i32 %call97, %17
  br i1 %cmp108.not, label %cond.false111, label %cond.end112

cond.false111:                                    ; preds = %cond.end104
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 393) #8
  unreachable

cond.end112:                                      ; preds = %cond.end104
  store i32 0, i32* %12, align 8, !tbaa !12
  br label %if.end178

if.else:                                          ; preds = %if.then66
  %cmp115 = icmp ult i32 %cond64, 3
  br i1 %cmp115, label %if.then117, label %if.end124

if.then117:                                       ; preds = %if.else
  %conv120362 = zext i32 %cond64 to i64
  %call121 = tail call i8* @memcpy(i8* noundef nonnull %tmp, i8* noundef %in.addr.0423, i64 noundef %conv120362) #7
  store i32 %cond64, i32* %12, align 8, !tbaa !12
  %add123 = add nsw i32 %cond64, %ret.0422
  br label %cleanup

if.end124:                                        ; preds = %if.else
  %rem363.lhs.trunc = trunc i32 %cond64 to i16
  %rem363364 = urem i16 %rem363.lhs.trunc, 3
  %rem363.zext = zext i16 %rem363364 to i32
  %sub125 = sub nuw nsw i32 %cond64, %rem363.zext
  %call128 = tail call i32 @EVP_EncodeBlock(i8* noundef nonnull %buf126, i8* noundef %in.addr.0423, i32 noundef %sub125) #7
  store i32 %call128, i32* %buf_len9, align 8, !tbaa !10
  %cmp131 = icmp slt i32 %call128, 1503
  br i1 %cmp131, label %cond.end135, label %cond.false134

cond.false134:                                    ; preds = %if.end124
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 410) #8
  unreachable

cond.end135:                                      ; preds = %if.end124
  %18 = load i32, i32* %6, align 4, !tbaa !11
  %cmp139.not = icmp slt i32 %call128, %18
  br i1 %cmp139.not, label %cond.false142, label %cond.end143

cond.false142:                                    ; preds = %cond.end135
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 411) #8
  unreachable

cond.end143:                                      ; preds = %cond.end135
  %add145 = add nsw i32 %sub125, %ret.0422
  br label %if.end178

if.else147:                                       ; preds = %while.body59
  %19 = load %struct.evp_Encode_Ctx_st*, %struct.evp_Encode_Ctx_st** %13, align 8, !tbaa !13
  %call152 = tail call i32 @EVP_EncodeUpdate(%struct.evp_Encode_Ctx_st* noundef %19, i8* noundef nonnull %buf126, i32* noundef nonnull %buf_len9, i8* noundef %in.addr.0423, i32 noundef %cond64) #7
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then154, label %if.end161

if.then154:                                       ; preds = %if.else147
  %cmp155 = icmp eq i32 %ret.0422, 0
  %cond160 = select i1 %cmp155, i32 -1, i32 %ret.0422
  br label %cleanup

if.end161:                                        ; preds = %if.else147
  %20 = load i32, i32* %buf_len9, align 8, !tbaa !10
  %cmp163 = icmp slt i32 %20, 1503
  br i1 %cmp163, label %cond.end167, label %cond.false166

cond.false166:                                    ; preds = %if.end161
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 419) #8
  unreachable

cond.end167:                                      ; preds = %if.end161
  %21 = load i32, i32* %6, align 4, !tbaa !11
  %cmp171.not = icmp slt i32 %20, %21
  br i1 %cmp171.not, label %cond.false174, label %cond.end175

cond.false174:                                    ; preds = %cond.end167
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 420) #8
  unreachable

cond.end175:                                      ; preds = %cond.end167
  %add177 = add nsw i32 %cond64, %ret.0422
  br label %if.end178

if.end178:                                        ; preds = %cond.end112, %cond.end143, %cond.end175
  %22 = phi i32 [ %call97, %cond.end112 ], [ %call128, %cond.end143 ], [ %20, %cond.end175 ]
  %ret.1 = phi i32 [ %add87, %cond.end112 ], [ %add145, %cond.end143 ], [ %add177, %cond.end175 ]
  %n.2 = phi i32 [ %spec.select, %cond.end112 ], [ %sub125, %cond.end143 ], [ %cond64, %cond.end175 ]
  %sub179 = sub nsw i32 %inl.addr.0420, %n.2
  %idx.ext359 = zext i32 %n.2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0423, i64 %idx.ext359
  store i32 0, i32* %6, align 4, !tbaa !11
  br label %while.cond182

while.cond182:                                    ; preds = %cond.end215, %if.end178
  %23 = phi i32 [ 0, %if.end178 ], [ %add209, %cond.end215 ]
  %n.3 = phi i32 [ %22, %if.end178 ], [ %sub207, %cond.end215 ]
  %cmp183 = icmp sgt i32 %n.3, 0
  br i1 %cmp183, label %while.body185, label %while.end225

while.body185:                                    ; preds = %while.cond182
  %idxprom188 = sext i32 %23 to i64
  %arrayidx189 = getelementptr inbounds i8, i8* %buf126, i64 %idxprom188
  %call190 = tail call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef nonnull %arrayidx189, i32 noundef %n.3) #7
  %cmp191 = icmp slt i32 %call190, 1
  br i1 %cmp191, label %if.then193, label %if.end200

if.then193:                                       ; preds = %while.body185
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #7
  %cmp194 = icmp eq i32 %ret.1, 0
  %cond199 = select i1 %cmp194, i32 %call190, i32 %ret.1
  br label %cleanup

if.end200:                                        ; preds = %while.body185
  %cmp201.not = icmp ult i32 %n.3, %call190
  br i1 %cmp201.not, label %cond.false204, label %cond.end205

cond.false204:                                    ; preds = %if.end200
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 434) #8
  unreachable

cond.end205:                                      ; preds = %if.end200
  %24 = load i32, i32* %6, align 4, !tbaa !11
  %add209 = add nsw i32 %24, %call190
  store i32 %add209, i32* %6, align 4, !tbaa !11
  %cmp211 = icmp slt i32 %add209, 1503
  br i1 %cmp211, label %cond.end215, label %cond.false214

cond.false214:                                    ; preds = %cond.end205
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 437) #8
  unreachable

cond.end215:                                      ; preds = %cond.end205
  %sub207 = sub nsw i32 %n.3, %call190
  %25 = load i32, i32* %buf_len9, align 8, !tbaa !10
  %cmp219.not = icmp slt i32 %25, %add209
  br i1 %cmp219.not, label %cond.false222, label %while.cond182, !llvm.loop !16

cond.false222:                                    ; preds = %cond.end215
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 438) #8
  unreachable

while.end225:                                     ; preds = %while.cond182
  store i32 0, i32* %buf_len9, align 8, !tbaa !10
  store i32 0, i32* %6, align 4, !tbaa !11
  %cmp58 = icmp sgt i32 %sub179, 0
  br i1 %cmp58, label %while.body59, label %cleanup, !llvm.loop !17

cleanup:                                          ; preds = %cond.end74, %while.end225, %if.then117, %while.end, %entry, %if.then193, %if.then154, %if.then28
  %retval.0 = phi i32 [ %call26, %if.then28 ], [ %cond199, %if.then193 ], [ %cond160, %if.then154 ], [ 0, %entry ], [ 0, %while.end ], [ %add123, %if.then117 ], [ %add87, %cond.end74 ], [ %ret.1, %while.end225 ]
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @b64_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #2 {
entry:
  %num = alloca i32, align 4
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %cmp = icmp eq i8* %out, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %cmp2 = icmp eq i8* %call, null
  %cmp3 = icmp eq %struct.bio_st* %call1, null
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  %encode = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %encode to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !4
  %cmp6.not = icmp eq i32 %2, 2
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  store i32 2, i32* %1, align 8, !tbaa !4
  %buf_len = bitcast i8* %call to i32*
  store i32 0, i32* %buf_len, align 8, !tbaa !10
  %buf_off = getelementptr inbounds i8, i8* %call, i64 4
  %3 = bitcast i8* %buf_off to i32*
  store i32 0, i32* %3, align 4, !tbaa !11
  %tmp_len = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %tmp_len to i32*
  store i32 0, i32* %4, align 8, !tbaa !12
  %base64 = getelementptr inbounds i8, i8* %call, i64 32
  %5 = bitcast i8* %base64 to %struct.evp_Encode_Ctx_st**
  %6 = load %struct.evp_Encode_Ctx_st*, %struct.evp_Encode_Ctx_st** %5, align 8, !tbaa !13
  tail call void @EVP_DecodeInit(%struct.evp_Encode_Ctx_st* noundef %6) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end5, %if.then7
  %buf_len10.pre-phi = bitcast i8* %call to i32*
  %7 = load i32, i32* %buf_len10.pre-phi, align 8, !tbaa !10
  %cmp11 = icmp sgt i32 %7, 0
  br i1 %cmp11, label %if.then12, label %if.end40

if.then12:                                        ; preds = %if.end9
  %buf_off14 = getelementptr inbounds i8, i8* %call, i64 4
  %8 = bitcast i8* %buf_off14 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !11
  %cmp15.not = icmp slt i32 %7, %9
  br i1 %cmp15.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then12
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 135) #8
  unreachable

cond.end:                                         ; preds = %if.then12
  %sub = sub nsw i32 %7, %9
  %cmp18 = icmp sgt i32 %sub, %outl
  %spec.select = select i1 %cmp18, i32 %outl, i32 %sub
  %add = add nsw i32 %spec.select, %9
  %cmp22 = icmp slt i32 %add, 1502
  br i1 %cmp22, label %cond.end25, label %cond.false24

cond.false24:                                     ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 139) #8
  unreachable

cond.end25:                                       ; preds = %cond.end
  %buf = getelementptr inbounds i8, i8* %call, i64 40
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %idxprom
  %conv = sext i32 %spec.select to i64
  %call28 = tail call i8* @memcpy(i8* noundef nonnull %out, i8* noundef nonnull %arrayidx, i64 noundef %conv) #7
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 %conv
  %sub29 = sub nsw i32 %outl, %spec.select
  %10 = load i32, i32* %8, align 4, !tbaa !11
  %add31 = add nsw i32 %10, %spec.select
  store i32 %add31, i32* %8, align 4, !tbaa !11
  %11 = load i32, i32* %buf_len10.pre-phi, align 8, !tbaa !10
  %cmp34 = icmp eq i32 %11, %add31
  br i1 %cmp34, label %if.then36, label %if.end40

if.then36:                                        ; preds = %cond.end25
  store i32 0, i32* %buf_len10.pre-phi, align 8, !tbaa !10
  store i32 0, i32* %8, align 4, !tbaa !11
  br label %if.end40

if.end40:                                         ; preds = %cond.end25, %if.then36, %if.end9
  %ret.0 = phi i32 [ %spec.select, %if.then36 ], [ %spec.select, %cond.end25 ], [ 0, %if.end9 ]
  %outl.addr.0 = phi i32 [ %sub29, %if.then36 ], [ %sub29, %cond.end25 ], [ %outl, %if.end9 ]
  %out.addr.0 = phi i8* [ %add.ptr, %if.then36 ], [ %add.ptr, %cond.end25 ], [ %out, %if.end9 ]
  %cmp41537 = icmp sgt i32 %outl.addr.0, 0
  br i1 %cmp41537, label %while.body.lr.ph.lr.ph, label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %if.end40
  %cont = getelementptr inbounds i8, i8* %call, i64 24
  %12 = bitcast i8* %cont to i32*
  %tmp.ptr = getelementptr i8, i8* %call, i64 1542
  %tmp_len47 = getelementptr inbounds i8, i8* %call, i64 8
  %13 = bitcast i8* %tmp_len47 to i32*
  %start = getelementptr inbounds i8, i8* %call, i64 20
  %14 = bitcast i8* %start to i32*
  %tmp_nl = getelementptr inbounds i8, i8* %call, i64 12
  %15 = bitcast i8* %tmp_nl to i32*
  %base6491 = getelementptr inbounds i8, i8* %call, i64 32
  %16 = bitcast i8* %base6491 to %struct.evp_Encode_Ctx_st**
  %buf92 = getelementptr inbounds i8, i8* %call, i64 40
  %buf_off254 = getelementptr inbounds i8, i8* %call, i64 4
  %17 = bitcast i8* %buf_off254 to i32*
  %scevgep = getelementptr i8, i8* %call, i64 1543
  %scevgep625 = getelementptr i8, i8* %call, i64 1542
  %scevgep639 = getelementptr i8, i8* %call, i64 1542
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.end280
  %out.addr.1.ph543 = phi i8* [ %out.addr.0, %while.body.lr.ph.lr.ph ], [ %add.ptr283, %if.end280 ]
  %outl.addr.1.ph542 = phi i32 [ %outl.addr.0, %while.body.lr.ph.lr.ph ], [ %sub281, %if.end280 ]
  %ret_code.0.ph541 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %ret_code.1, %if.end280 ]
  %ret.1.ph538 = phi i32 [ %ret.0, %while.body.lr.ph.lr.ph ], [ %add271, %if.end280 ]
  %18 = load i32, i32* %12, align 8, !tbaa !18
  %cmp43616 = icmp slt i32 %18, 1
  br i1 %cmp43616, label %while.end, label %if.end46

if.end46:                                         ; preds = %while.body.lr.ph, %while.cond.backedge
  %ret_code.0526617 = phi i32 [ %ret_code.1, %while.cond.backedge ], [ %ret_code.0.ph541, %while.body.lr.ph ]
  %19 = load i32, i32* %13, align 8, !tbaa !12
  %idxprom48 = sext i32 %19 to i64
  %arrayidx49 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %idxprom48
  %sub51 = sub nsw i32 1024, %19
  %call52 = call i32 @BIO_read(%struct.bio_st* noundef %call1, i8* noundef nonnull %arrayidx49, i32 noundef %sub51) #7
  %cmp53 = icmp slt i32 %call52, 1
  br i1 %cmp53, label %if.then55, label %if.end46.if.end66_crit_edge

if.end46.if.end66_crit_edge:                      ; preds = %if.end46
  %.pre = load i32, i32* %13, align 8, !tbaa !12
  br label %if.end66

if.then55:                                        ; preds = %if.end46
  %call56 = call i32 @BIO_test_flags(%struct.bio_st* noundef %call1, i32 noundef 8) #7
  %tobool.not = icmp eq i32 %call56, 0
  br i1 %tobool.not, label %if.then57, label %while.end

if.then57:                                        ; preds = %if.then55
  store i32 %call52, i32* %12, align 8, !tbaa !18
  %20 = load i32, i32* %13, align 8, !tbaa !12
  %cmp60 = icmp eq i32 %20, 0
  br i1 %cmp60, label %while.end, label %if.end66

if.end66:                                         ; preds = %if.end46.if.end66_crit_edge, %if.then57
  %21 = phi i32 [ %.pre, %if.end46.if.end66_crit_edge ], [ %20, %if.then57 ]
  %i.1 = phi i32 [ %call52, %if.end46.if.end66_crit_edge ], [ 0, %if.then57 ]
  %ret_code.1 = phi i32 [ %ret_code.0526617, %if.end46.if.end66_crit_edge ], [ %call52, %if.then57 ]
  %add68 = add i32 %21, %i.1
  store i32 %add68, i32* %13, align 8, !tbaa !12
  %22 = load i32, i32* %14, align 4, !tbaa !19
  %tobool70.not = icmp eq i32 %22, 0
  br i1 %tobool70.not, label %if.else179, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end66
  %call71 = call i32 @BIO_test_flags(%struct.bio_st* noundef %b, i32 noundef -1) #7
  %and = and i32 %call71, 256
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %if.else75, label %if.end189.sink.split

if.else75:                                        ; preds = %land.lhs.true
  %.pr = load i32, i32* %14, align 4, !tbaa !19
  %tobool77.not = icmp eq i32 %.pr, 0
  br i1 %tobool77.not, label %if.else179, label %if.then78

if.then78:                                        ; preds = %if.else75
  store i32 0, i32* %num, align 4, !tbaa !20
  %cmp80508 = icmp sgt i32 %add68, 0
  br i1 %cmp80508, label %for.body.preheader, label %for.end135.thread

for.body.preheader:                               ; preds = %if.then78
  %23 = add nsw i32 %i.1, -1
  %24 = add i32 %23, %21
  %25 = zext i32 %24 to i64
  %scevgep562 = getelementptr i8, i8* %scevgep, i64 %25
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc133
  %p.0.ptr514 = phi i8* [ %p.0.ptr, %for.inc133 ], [ %tmp.ptr, %for.body.preheader ]
  %q.0.ptr513 = phi i8* [ %incdec.ptr.ptr, %for.inc133 ], [ %tmp.ptr, %for.body.preheader ]
  %q.0.idx512 = phi i64 [ %q.0.add, %for.inc133 ], [ 1542, %for.body.preheader ]
  %p.0.idx511 = phi i64 [ %p.1.idx, %for.inc133 ], [ 1542, %for.body.preheader ]
  %j.0509 = phi i32 [ %inc134, %for.inc133 ], [ 0, %for.body.preheader ]
  %q.0.add = add nuw nsw i64 %q.0.idx512, 1
  %incdec.ptr.ptr = getelementptr inbounds i8, i8* %call, i64 %q.0.add
  %26 = load i8, i8* %q.0.ptr513, align 1, !tbaa !21
  %cmp83.not = icmp eq i8 %26, 10
  br i1 %cmp83.not, label %if.end86, label %for.inc133

if.end86:                                         ; preds = %for.body
  %27 = load i32, i32* %15, align 4, !tbaa !22
  %tobool87.not = icmp eq i32 %27, 0
  br i1 %tobool87.not, label %if.end90, label %if.then88

if.then88:                                        ; preds = %if.end86
  store i32 0, i32* %15, align 4, !tbaa !22
  br label %for.inc133

if.end90:                                         ; preds = %if.end86
  %28 = load %struct.evp_Encode_Ctx_st*, %struct.evp_Encode_Ctx_st** %16, align 8, !tbaa !13
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %p.0.ptr514 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv94 = trunc i64 %sub.ptr.sub to i32
  %call95 = call i32 @EVP_DecodeUpdate(%struct.evp_Encode_Ctx_st* noundef %28, i8* noundef nonnull %buf92, i32* noundef nonnull %num, i8* noundef nonnull %p.0.ptr514, i32 noundef %conv94) #7
  %cmp96 = icmp slt i32 %call95, 1
  %29 = load i32, i32* %num, align 4
  %cmp99 = icmp eq i32 %29, 0
  %or.cond302 = select i1 %cmp96, i1 %cmp99, i1 false
  br i1 %or.cond302, label %land.lhs.true101, label %if.else106

land.lhs.true101:                                 ; preds = %if.end90
  %30 = load i32, i32* %14, align 4, !tbaa !19
  %tobool103.not = icmp eq i32 %30, 0
  br i1 %tobool103.not, label %if.else106, label %if.then104

if.then104:                                       ; preds = %land.lhs.true101
  %31 = load %struct.evp_Encode_Ctx_st*, %struct.evp_Encode_Ctx_st** %16, align 8, !tbaa !13
  call void @EVP_DecodeInit(%struct.evp_Encode_Ctx_st* noundef %31) #7
  br label %for.inc133

if.else106:                                       ; preds = %land.lhs.true101, %if.end90
  %cmp109.not = icmp eq i64 %p.0.idx511, 1542
  br i1 %cmp109.not, label %if.end129, label %if.then111

if.then111:                                       ; preds = %if.else106
  %32 = trunc i64 %p.0.idx511 to i32
  %.neg480 = add i32 %add68, 1542
  %conv119 = sub i32 %.neg480, %32
  %cmp121518 = icmp sgt i32 %conv119, 0
  br i1 %cmp121518, label %iter.check649, label %if.end129

iter.check649:                                    ; preds = %if.then111
  %wide.trip.count = zext i32 %conv119 to i64
  %min.iters.check647 = icmp ult i32 %conv119, 8
  br i1 %min.iters.check647, label %for.body123.preheader, label %vector.memcheck638

vector.memcheck638:                               ; preds = %iter.check649
  %scevgep640 = getelementptr i8, i8* %scevgep639, i64 %wide.trip.count
  %scevgep641 = getelementptr i8, i8* %p.0.ptr514, i64 %wide.trip.count
  %bound0642 = icmp ult i8* %tmp.ptr, %scevgep641
  %bound1643 = icmp ult i8* %p.0.ptr514, %scevgep640
  %found.conflict644 = and i1 %bound0642, %bound1643
  br i1 %found.conflict644, label %for.body123.preheader, label %vector.main.loop.iter.check651

vector.main.loop.iter.check651:                   ; preds = %vector.memcheck638
  %min.iters.check650 = icmp ult i32 %conv119, 32
  br i1 %min.iters.check650, label %vec.epilog.ph664, label %vector.ph652

vector.ph652:                                     ; preds = %vector.main.loop.iter.check651
  %n.vec654 = and i64 %wide.trip.count, 4294967264
  %33 = add nsw i64 %n.vec654, -32
  %34 = lshr exact i64 %33, 5
  %35 = add nuw nsw i64 %34, 1
  %xtraiter = and i64 %35, 3
  %36 = icmp ult i64 %33, 96
  br i1 %36, label %middle.block645.unr-lcssa, label %vector.ph652.new

vector.ph652.new:                                 ; preds = %vector.ph652
  %unroll_iter = and i64 %35, 1152921504606846972
  br label %vector.body646

vector.body646:                                   ; preds = %vector.body646, %vector.ph652.new
  %index656 = phi i64 [ 0, %vector.ph652.new ], [ %index.next659.3, %vector.body646 ]
  %niter = phi i64 [ 0, %vector.ph652.new ], [ %niter.next.3, %vector.body646 ]
  %37 = getelementptr inbounds i8, i8* %p.0.ptr514, i64 %index656
  %38 = bitcast i8* %37 to <16 x i8>*
  %wide.load657 = load <16 x i8>, <16 x i8>* %38, align 1, !tbaa !21, !alias.scope !23
  %39 = getelementptr inbounds i8, i8* %37, i64 16
  %40 = bitcast i8* %39 to <16 x i8>*
  %wide.load658 = load <16 x i8>, <16 x i8>* %40, align 1, !tbaa !21, !alias.scope !23
  %41 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %index656
  %42 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> %wide.load657, <16 x i8>* %42, align 1, !tbaa !21, !alias.scope !26, !noalias !23
  %43 = getelementptr inbounds i8, i8* %41, i64 16
  %44 = bitcast i8* %43 to <16 x i8>*
  store <16 x i8> %wide.load658, <16 x i8>* %44, align 1, !tbaa !21, !alias.scope !26, !noalias !23
  %index.next659 = or i64 %index656, 32
  %45 = getelementptr inbounds i8, i8* %p.0.ptr514, i64 %index.next659
  %46 = bitcast i8* %45 to <16 x i8>*
  %wide.load657.1 = load <16 x i8>, <16 x i8>* %46, align 1, !tbaa !21, !alias.scope !23
  %47 = getelementptr inbounds i8, i8* %45, i64 16
  %48 = bitcast i8* %47 to <16 x i8>*
  %wide.load658.1 = load <16 x i8>, <16 x i8>* %48, align 1, !tbaa !21, !alias.scope !23
  %49 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %index.next659
  %50 = bitcast i8* %49 to <16 x i8>*
  store <16 x i8> %wide.load657.1, <16 x i8>* %50, align 1, !tbaa !21, !alias.scope !26, !noalias !23
  %51 = getelementptr inbounds i8, i8* %49, i64 16
  %52 = bitcast i8* %51 to <16 x i8>*
  store <16 x i8> %wide.load658.1, <16 x i8>* %52, align 1, !tbaa !21, !alias.scope !26, !noalias !23
  %index.next659.1 = or i64 %index656, 64
  %53 = getelementptr inbounds i8, i8* %p.0.ptr514, i64 %index.next659.1
  %54 = bitcast i8* %53 to <16 x i8>*
  %wide.load657.2 = load <16 x i8>, <16 x i8>* %54, align 1, !tbaa !21, !alias.scope !23
  %55 = getelementptr inbounds i8, i8* %53, i64 16
  %56 = bitcast i8* %55 to <16 x i8>*
  %wide.load658.2 = load <16 x i8>, <16 x i8>* %56, align 1, !tbaa !21, !alias.scope !23
  %57 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %index.next659.1
  %58 = bitcast i8* %57 to <16 x i8>*
  store <16 x i8> %wide.load657.2, <16 x i8>* %58, align 1, !tbaa !21, !alias.scope !26, !noalias !23
  %59 = getelementptr inbounds i8, i8* %57, i64 16
  %60 = bitcast i8* %59 to <16 x i8>*
  store <16 x i8> %wide.load658.2, <16 x i8>* %60, align 1, !tbaa !21, !alias.scope !26, !noalias !23
  %index.next659.2 = or i64 %index656, 96
  %61 = getelementptr inbounds i8, i8* %p.0.ptr514, i64 %index.next659.2
  %62 = bitcast i8* %61 to <16 x i8>*
  %wide.load657.3 = load <16 x i8>, <16 x i8>* %62, align 1, !tbaa !21, !alias.scope !23
  %63 = getelementptr inbounds i8, i8* %61, i64 16
  %64 = bitcast i8* %63 to <16 x i8>*
  %wide.load658.3 = load <16 x i8>, <16 x i8>* %64, align 1, !tbaa !21, !alias.scope !23
  %65 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %index.next659.2
  %66 = bitcast i8* %65 to <16 x i8>*
  store <16 x i8> %wide.load657.3, <16 x i8>* %66, align 1, !tbaa !21, !alias.scope !26, !noalias !23
  %67 = getelementptr inbounds i8, i8* %65, i64 16
  %68 = bitcast i8* %67 to <16 x i8>*
  store <16 x i8> %wide.load658.3, <16 x i8>* %68, align 1, !tbaa !21, !alias.scope !26, !noalias !23
  %index.next659.3 = add nuw i64 %index656, 128
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block645.unr-lcssa, label %vector.body646, !llvm.loop !28

middle.block645.unr-lcssa:                        ; preds = %vector.body646, %vector.ph652
  %index656.unr = phi i64 [ 0, %vector.ph652 ], [ %index.next659.3, %vector.body646 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block645, label %vector.body646.epil

vector.body646.epil:                              ; preds = %middle.block645.unr-lcssa, %vector.body646.epil
  %index656.epil = phi i64 [ %index.next659.epil, %vector.body646.epil ], [ %index656.unr, %middle.block645.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body646.epil ], [ 0, %middle.block645.unr-lcssa ]
  %69 = getelementptr inbounds i8, i8* %p.0.ptr514, i64 %index656.epil
  %70 = bitcast i8* %69 to <16 x i8>*
  %wide.load657.epil = load <16 x i8>, <16 x i8>* %70, align 1, !tbaa !21, !alias.scope !23
  %71 = getelementptr inbounds i8, i8* %69, i64 16
  %72 = bitcast i8* %71 to <16 x i8>*
  %wide.load658.epil = load <16 x i8>, <16 x i8>* %72, align 1, !tbaa !21, !alias.scope !23
  %73 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %index656.epil
  %74 = bitcast i8* %73 to <16 x i8>*
  store <16 x i8> %wide.load657.epil, <16 x i8>* %74, align 1, !tbaa !21, !alias.scope !26, !noalias !23
  %75 = getelementptr inbounds i8, i8* %73, i64 16
  %76 = bitcast i8* %75 to <16 x i8>*
  store <16 x i8> %wide.load658.epil, <16 x i8>* %76, align 1, !tbaa !21, !alias.scope !26, !noalias !23
  %index.next659.epil = add nuw i64 %index656.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block645, label %vector.body646.epil, !llvm.loop !30

middle.block645:                                  ; preds = %vector.body646.epil, %middle.block645.unr-lcssa
  %cmp.n655 = icmp eq i64 %n.vec654, %wide.trip.count
  br i1 %cmp.n655, label %if.end129, label %vec.epilog.iter.check663

vec.epilog.iter.check663:                         ; preds = %middle.block645
  %n.vec.remaining665 = and i64 %wide.trip.count, 24
  %min.epilog.iters.check666 = icmp eq i64 %n.vec.remaining665, 0
  br i1 %min.epilog.iters.check666, label %for.body123.preheader, label %vec.epilog.ph664

vec.epilog.ph664:                                 ; preds = %vector.main.loop.iter.check651, %vec.epilog.iter.check663
  %vec.epilog.resume.val667 = phi i64 [ %n.vec654, %vec.epilog.iter.check663 ], [ 0, %vector.main.loop.iter.check651 ]
  %77 = add i32 %i.1, 1542
  %78 = add i32 %77, %21
  %79 = trunc i64 %p.0.idx511 to i32
  %80 = sub i32 %78, %79
  %81 = zext i32 %80 to i64
  %n.vec669 = and i64 %81, 4294967288
  br label %vec.epilog.vector.body662

vec.epilog.vector.body662:                        ; preds = %vec.epilog.vector.body662, %vec.epilog.ph664
  %index672 = phi i64 [ %vec.epilog.resume.val667, %vec.epilog.ph664 ], [ %index.next674, %vec.epilog.vector.body662 ]
  %82 = getelementptr inbounds i8, i8* %p.0.ptr514, i64 %index672
  %83 = bitcast i8* %82 to <8 x i8>*
  %wide.load673 = load <8 x i8>, <8 x i8>* %83, align 1, !tbaa !21
  %84 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %index672
  %85 = bitcast i8* %84 to <8 x i8>*
  store <8 x i8> %wide.load673, <8 x i8>* %85, align 1, !tbaa !21
  %index.next674 = add nuw i64 %index672, 8
  %86 = icmp eq i64 %index.next674, %n.vec669
  br i1 %86, label %vec.epilog.middle.block660, label %vec.epilog.vector.body662, !llvm.loop !32

vec.epilog.middle.block660:                       ; preds = %vec.epilog.vector.body662
  %cmp.n671 = icmp eq i64 %n.vec669, %81
  br i1 %cmp.n671, label %if.end129, label %for.body123.preheader

for.body123.preheader:                            ; preds = %vector.memcheck638, %iter.check649, %vec.epilog.iter.check663, %vec.epilog.middle.block660
  %indvars.iv.ph = phi i64 [ 0, %iter.check649 ], [ 0, %vector.memcheck638 ], [ %n.vec654, %vec.epilog.iter.check663 ], [ %n.vec669, %vec.epilog.middle.block660 ]
  %87 = xor i64 %indvars.iv.ph, -1
  %88 = add nsw i64 %87, %wide.trip.count
  %xtraiter686 = and i64 %wide.trip.count, 3
  %lcmp.mod687.not = icmp eq i64 %xtraiter686, 0
  br i1 %lcmp.mod687.not, label %for.body123.prol.loopexit, label %for.body123.prol

for.body123.prol:                                 ; preds = %for.body123.preheader, %for.body123.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body123.prol ], [ %indvars.iv.ph, %for.body123.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body123.prol ], [ 0, %for.body123.preheader ]
  %arrayidx125.prol = getelementptr inbounds i8, i8* %p.0.ptr514, i64 %indvars.iv.prol
  %89 = load i8, i8* %arrayidx125.prol, align 1, !tbaa !21
  %arrayidx128.prol = getelementptr inbounds i8, i8* %tmp.ptr, i64 %indvars.iv.prol
  store i8 %89, i8* %arrayidx128.prol, align 1, !tbaa !21
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter686
  br i1 %prol.iter.cmp.not, label %for.body123.prol.loopexit, label %for.body123.prol, !llvm.loop !34

for.body123.prol.loopexit:                        ; preds = %for.body123.prol, %for.body123.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body123.preheader ], [ %indvars.iv.next.prol, %for.body123.prol ]
  %90 = icmp ult i64 %88, 3
  br i1 %90, label %if.end129, label %for.body123

for.body123:                                      ; preds = %for.body123.prol.loopexit, %for.body123
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body123 ], [ %indvars.iv.unr, %for.body123.prol.loopexit ]
  %arrayidx125 = getelementptr inbounds i8, i8* %p.0.ptr514, i64 %indvars.iv
  %91 = load i8, i8* %arrayidx125, align 1, !tbaa !21
  %arrayidx128 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %indvars.iv
  store i8 %91, i8* %arrayidx128, align 1, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx125.1 = getelementptr inbounds i8, i8* %p.0.ptr514, i64 %indvars.iv.next
  %92 = load i8, i8* %arrayidx125.1, align 1, !tbaa !21
  %arrayidx128.1 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %indvars.iv.next
  store i8 %92, i8* %arrayidx128.1, align 1, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx125.2 = getelementptr inbounds i8, i8* %p.0.ptr514, i64 %indvars.iv.next.1
  %93 = load i8, i8* %arrayidx125.2, align 1, !tbaa !21
  %arrayidx128.2 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %indvars.iv.next.1
  store i8 %93, i8* %arrayidx128.2, align 1, !tbaa !21
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx125.3 = getelementptr inbounds i8, i8* %p.0.ptr514, i64 %indvars.iv.next.2
  %94 = load i8, i8* %arrayidx125.3, align 1, !tbaa !21
  %arrayidx128.3 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %indvars.iv.next.2
  store i8 %94, i8* %arrayidx128.3, align 1, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond564.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond564.not.3, label %if.end129, label %for.body123, !llvm.loop !35

if.end129:                                        ; preds = %for.body123.prol.loopexit, %for.body123, %middle.block645, %vec.epilog.middle.block660, %if.then111, %if.else106
  %i.2 = phi i32 [ %add68, %if.else106 ], [ %conv119, %if.then111 ], [ %conv119, %vec.epilog.middle.block660 ], [ %conv119, %middle.block645 ], [ %conv119, %for.body123 ], [ %conv119, %for.body123.prol.loopexit ]
  %95 = load %struct.evp_Encode_Ctx_st*, %struct.evp_Encode_Ctx_st** %16, align 8, !tbaa !13
  call void @EVP_DecodeInit(%struct.evp_Encode_Ctx_st* noundef %95) #7
  store i32 0, i32* %14, align 4, !tbaa !19
  br label %for.end135

for.inc133:                                       ; preds = %for.body, %if.then104, %if.then88
  %p.1.idx = phi i64 [ %p.0.idx511, %for.body ], [ %q.0.add, %if.then88 ], [ %q.0.add, %if.then104 ]
  %inc134 = add nuw nsw i32 %j.0509, 1
  %p.0.ptr = getelementptr inbounds i8, i8* %call, i64 %p.1.idx
  %exitcond.not = icmp eq i32 %inc134, %add68
  br i1 %exitcond.not, label %for.end135, label %for.body, !llvm.loop !36

for.end135:                                       ; preds = %for.inc133, %if.end129
  %j.0489 = phi i32 [ %j.0509, %if.end129 ], [ %add68, %for.inc133 ]
  %p.0.idx486 = phi i64 [ %p.0.idx511, %if.end129 ], [ %p.1.idx, %for.inc133 ]
  %p.0.ptr482 = phi i8* [ %p.0.ptr514, %if.end129 ], [ %p.0.ptr, %for.inc133 ]
  %i.3 = phi i32 [ %i.2, %if.end129 ], [ %add68, %for.inc133 ]
  %q.1 = phi i8* [ %incdec.ptr.ptr, %if.end129 ], [ %scevgep562, %for.inc133 ]
  %q.1630 = ptrtoint i8* %q.1 to i64
  %p.0.ptr482631 = ptrtoint i8* %p.0.ptr482 to i64
  %cmp136 = icmp eq i32 %j.0489, %i.3
  %96 = load i32, i32* %num, align 4
  %cmp139 = icmp eq i32 %96, 0
  %or.cond303 = select i1 %cmp136, i1 %cmp139, i1 false
  br i1 %or.cond303, label %if.then141, label %if.end189.sink.split

for.end135.thread:                                ; preds = %if.then78
  %cmp136576 = icmp eq i32 %add68, 0
  %97 = load i32, i32* %num, align 4
  %cmp139577 = icmp eq i32 %97, 0
  %or.cond303578 = select i1 %cmp136576, i1 %cmp139577, i1 false
  br i1 %or.cond303578, label %while.cond.backedge, label %if.end189.sink.split

if.then141:                                       ; preds = %for.end135
  %cmp144 = icmp eq i64 %p.0.idx486, 1542
  br i1 %cmp144, label %if.then146, label %if.else153

if.then146:                                       ; preds = %if.then141
  %cmp147 = icmp eq i32 %j.0489, 1024
  br i1 %cmp147, label %if.then149, label %while.cond.backedge

if.then149:                                       ; preds = %if.then146
  store i32 1, i32* %15, align 4, !tbaa !22
  br label %while.cond.backedge.sink.split

if.else153:                                       ; preds = %if.then141
  %cmp154.not = icmp eq i8* %p.0.ptr482, %q.1
  br i1 %cmp154.not, label %while.cond.backedge, label %if.then156

if.then156:                                       ; preds = %if.else153
  %sub.ptr.lhs.cast157 = ptrtoint i8* %q.1 to i64
  %sub.ptr.rhs.cast158 = ptrtoint i8* %p.0.ptr482 to i64
  %sub.ptr.sub159 = sub i64 %sub.ptr.lhs.cast157, %sub.ptr.rhs.cast158
  %conv160 = trunc i64 %sub.ptr.sub159 to i32
  %cmp162520 = icmp sgt i32 %conv160, 0
  br i1 %cmp162520, label %iter.check, label %while.cond.backedge.sink.split

iter.check:                                       ; preds = %if.then156
  %wide.trip.count568 = and i64 %sub.ptr.sub159, 4294967295
  %min.iters.check = icmp ult i64 %wide.trip.count568, 8
  br i1 %min.iters.check, label %for.body164.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep626 = getelementptr i8, i8* %scevgep625, i64 %wide.trip.count568
  %scevgep627 = getelementptr i8, i8* %p.0.ptr482, i64 %wide.trip.count568
  %bound0 = icmp ult i8* %tmp.ptr, %scevgep627
  %bound1 = icmp ult i8* %p.0.ptr482, %scevgep626
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body164.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check628 = icmp ult i64 %wide.trip.count568, 32
  br i1 %min.iters.check628, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %sub.ptr.sub159, 31
  %n.vec = sub nsw i64 %wide.trip.count568, %n.mod.vf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %98 = getelementptr inbounds i8, i8* %p.0.ptr482, i64 %index
  %99 = bitcast i8* %98 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %99, align 1, !tbaa !21, !alias.scope !37
  %100 = getelementptr inbounds i8, i8* %98, i64 16
  %101 = bitcast i8* %100 to <16 x i8>*
  %wide.load629 = load <16 x i8>, <16 x i8>* %101, align 1, !tbaa !21, !alias.scope !37
  %102 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %index
  %103 = bitcast i8* %102 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %103, align 1, !tbaa !21, !alias.scope !40, !noalias !37
  %104 = getelementptr inbounds i8, i8* %102, i64 16
  %105 = bitcast i8* %104 to <16 x i8>*
  store <16 x i8> %wide.load629, <16 x i8>* %105, align 1, !tbaa !21, !alias.scope !40, !noalias !37
  %index.next = add nuw i64 %index, 32
  %106 = icmp eq i64 %index.next, %n.vec
  br i1 %106, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %while.cond.backedge.sink.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp ult i64 %n.mod.vf, 8
  br i1 %min.epilog.iters.check, label %for.body164.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %107 = sub i64 %q.1630, %p.0.ptr482631
  %108 = and i64 %107, 4294967295
  %n.mod.vf632 = and i64 %107, 7
  %n.vec633 = sub nsw i64 %108, %n.mod.vf632
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index635 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next637, %vec.epilog.vector.body ]
  %109 = getelementptr inbounds i8, i8* %p.0.ptr482, i64 %index635
  %110 = bitcast i8* %109 to <8 x i8>*
  %wide.load636 = load <8 x i8>, <8 x i8>* %110, align 1, !tbaa !21
  %111 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %index635
  %112 = bitcast i8* %111 to <8 x i8>*
  store <8 x i8> %wide.load636, <8 x i8>* %112, align 1, !tbaa !21
  %index.next637 = add nuw i64 %index635, 8
  %113 = icmp eq i64 %index.next637, %n.vec633
  br i1 %113, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n634 = icmp eq i64 %n.mod.vf632, 0
  br i1 %cmp.n634, label %while.cond.backedge.sink.split, label %for.body164.preheader

for.body164.preheader:                            ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv565.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec633, %vec.epilog.middle.block ]
  %114 = sub i64 %sub.ptr.sub159, %indvars.iv565.ph
  %115 = xor i64 %indvars.iv565.ph, -1
  %116 = add nsw i64 %wide.trip.count568, %115
  %xtraiter688 = and i64 %114, 3
  %lcmp.mod689.not = icmp eq i64 %xtraiter688, 0
  br i1 %lcmp.mod689.not, label %for.body164.prol.loopexit, label %for.body164.prol

for.body164.prol:                                 ; preds = %for.body164.preheader, %for.body164.prol
  %indvars.iv565.prol = phi i64 [ %indvars.iv.next566.prol, %for.body164.prol ], [ %indvars.iv565.ph, %for.body164.preheader ]
  %prol.iter690 = phi i64 [ %prol.iter690.next, %for.body164.prol ], [ 0, %for.body164.preheader ]
  %arrayidx166.prol = getelementptr inbounds i8, i8* %p.0.ptr482, i64 %indvars.iv565.prol
  %117 = load i8, i8* %arrayidx166.prol, align 1, !tbaa !21
  %arrayidx169.prol = getelementptr inbounds i8, i8* %tmp.ptr, i64 %indvars.iv565.prol
  store i8 %117, i8* %arrayidx169.prol, align 1, !tbaa !21
  %indvars.iv.next566.prol = add nuw nsw i64 %indvars.iv565.prol, 1
  %prol.iter690.next = add i64 %prol.iter690, 1
  %prol.iter690.cmp.not = icmp eq i64 %prol.iter690.next, %xtraiter688
  br i1 %prol.iter690.cmp.not, label %for.body164.prol.loopexit, label %for.body164.prol, !llvm.loop !44

for.body164.prol.loopexit:                        ; preds = %for.body164.prol, %for.body164.preheader
  %indvars.iv565.unr = phi i64 [ %indvars.iv565.ph, %for.body164.preheader ], [ %indvars.iv.next566.prol, %for.body164.prol ]
  %118 = icmp ult i64 %116, 3
  br i1 %118, label %while.cond.backedge.sink.split, label %for.body164

for.body164:                                      ; preds = %for.body164.prol.loopexit, %for.body164
  %indvars.iv565 = phi i64 [ %indvars.iv.next566.3, %for.body164 ], [ %indvars.iv565.unr, %for.body164.prol.loopexit ]
  %arrayidx166 = getelementptr inbounds i8, i8* %p.0.ptr482, i64 %indvars.iv565
  %119 = load i8, i8* %arrayidx166, align 1, !tbaa !21
  %arrayidx169 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %indvars.iv565
  store i8 %119, i8* %arrayidx169, align 1, !tbaa !21
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1
  %arrayidx166.1 = getelementptr inbounds i8, i8* %p.0.ptr482, i64 %indvars.iv.next566
  %120 = load i8, i8* %arrayidx166.1, align 1, !tbaa !21
  %arrayidx169.1 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %indvars.iv.next566
  store i8 %120, i8* %arrayidx169.1, align 1, !tbaa !21
  %indvars.iv.next566.1 = add nuw nsw i64 %indvars.iv565, 2
  %arrayidx166.2 = getelementptr inbounds i8, i8* %p.0.ptr482, i64 %indvars.iv.next566.1
  %121 = load i8, i8* %arrayidx166.2, align 1, !tbaa !21
  %arrayidx169.2 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %indvars.iv.next566.1
  store i8 %121, i8* %arrayidx169.2, align 1, !tbaa !21
  %indvars.iv.next566.2 = add nuw nsw i64 %indvars.iv565, 3
  %arrayidx166.3 = getelementptr inbounds i8, i8* %p.0.ptr482, i64 %indvars.iv.next566.2
  %122 = load i8, i8* %arrayidx166.3, align 1, !tbaa !21
  %arrayidx169.3 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %indvars.iv.next566.2
  store i8 %122, i8* %arrayidx169.3, align 1, !tbaa !21
  %indvars.iv.next566.3 = add nuw nsw i64 %indvars.iv565, 4
  %exitcond569.not.3 = icmp eq i64 %indvars.iv.next566.3, %wide.trip.count568
  br i1 %exitcond569.not.3, label %while.cond.backedge.sink.split, label %for.body164, !llvm.loop !45

while.cond.backedge.sink.split:                   ; preds = %for.body164.prol.loopexit, %for.body164, %middle.block, %vec.epilog.middle.block, %if.then156, %if.then149
  %.sink = phi i32 [ 0, %if.then149 ], [ %conv160, %if.then156 ], [ %conv160, %vec.epilog.middle.block ], [ %conv160, %middle.block ], [ %conv160, %for.body164 ], [ %conv160, %for.body164.prol.loopexit ]
  store i32 %.sink, i32* %13, align 8, !tbaa !12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.backedge.sink.split, %for.end135.thread, %if.then146, %if.else153, %land.lhs.true182
  %123 = load i32, i32* %12, align 8, !tbaa !18
  %cmp43 = icmp slt i32 %123, 1
  br i1 %cmp43, label %while.end, label %if.end46, !llvm.loop !46

if.else179:                                       ; preds = %if.end66, %if.else75
  %cmp180 = icmp slt i32 %add68, 1024
  br i1 %cmp180, label %land.lhs.true182, label %if.end189

land.lhs.true182:                                 ; preds = %if.else179
  %124 = load i32, i32* %12, align 8, !tbaa !18
  %cmp184 = icmp sgt i32 %124, 0
  br i1 %cmp184, label %while.cond.backedge, label %if.end189

if.end189.sink.split:                             ; preds = %for.end135, %for.end135.thread, %land.lhs.true
  %i.4.ph = phi i32 [ %add68, %land.lhs.true ], [ %add68, %for.end135.thread ], [ %i.3, %for.end135 ]
  store i32 0, i32* %13, align 8, !tbaa !12
  br label %if.end189

if.end189:                                        ; preds = %land.lhs.true182, %if.else179, %if.end189.sink.split
  %i.4 = phi i32 [ %i.4.ph, %if.end189.sink.split ], [ %add68, %if.else179 ], [ %add68, %land.lhs.true182 ]
  %call190 = call i32 @BIO_test_flags(%struct.bio_st* noundef %b, i32 noundef -1) #7
  %and191 = and i32 %call190, 256
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.else243, label %if.then193

if.then193:                                       ; preds = %if.end189
  %and194 = and i32 %i.4, -4
  %call199 = call i32 @EVP_DecodeBlock(i8* noundef nonnull %buf92, i8* noundef nonnull %tmp.ptr, i32 noundef %and194) #7
  %cmp200 = icmp sgt i32 %and194, 2
  br i1 %cmp200, label %if.then202, label %if.end222

if.then202:                                       ; preds = %if.then193
  %sub204 = add nsw i32 %and194, -1
  %125 = zext i32 %sub204 to i64
  %arrayidx206 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %125
  %126 = load i8, i8* %arrayidx206, align 1, !tbaa !21
  %cmp208 = icmp eq i8 %126, 61
  br i1 %cmp208, label %if.then210, label %if.end222

if.then210:                                       ; preds = %if.then202
  %sub212 = add nsw i32 %and194, -2
  %127 = zext i32 %sub212 to i64
  %arrayidx214 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %127
  %128 = load i8, i8* %arrayidx214, align 1, !tbaa !21
  %cmp216 = icmp eq i8 %128, 61
  %spec.select477.v = select i1 %cmp216, i32 -2, i32 -1
  %spec.select477 = add nsw i32 %spec.select477.v, %call199
  br label %if.end222

if.end222:                                        ; preds = %if.then210, %if.then202, %if.then193
  %z.0 = phi i32 [ %call199, %if.then202 ], [ %call199, %if.then193 ], [ %spec.select477, %if.then210 ]
  %cmp223.not = icmp eq i32 %i.4, %and194
  br i1 %cmp223.not, label %if.end236, label %if.then225

if.then225:                                       ; preds = %if.end222
  %idxprom229 = sext i32 %and194 to i64
  %arrayidx230 = getelementptr inbounds i8, i8* %tmp.ptr, i64 %idxprom229
  %sub231 = and i32 %i.4, 3
  %conv232 = zext i32 %sub231 to i64
  %call233 = call i8* @memmove(i8* noundef nonnull %tmp.ptr, i8* noundef nonnull %arrayidx230, i64 noundef %conv232) #7
  store i32 %sub231, i32* %13, align 8, !tbaa !12
  br label %if.end236

if.end236:                                        ; preds = %if.then225, %if.end222
  %cmp238 = icmp sgt i32 %z.0, 0
  %spec.select478 = select i1 %cmp238, i32 %z.0, i32 0
  store i32 %spec.select478, i32* %buf_len10.pre-phi, align 8, !tbaa !10
  br label %if.end252

if.else243:                                       ; preds = %if.end189
  %129 = load %struct.evp_Encode_Ctx_st*, %struct.evp_Encode_Ctx_st** %16, align 8, !tbaa !13
  %call250 = call i32 @EVP_DecodeUpdate(%struct.evp_Encode_Ctx_st* noundef %129, i8* noundef nonnull %buf92, i32* noundef nonnull %buf_len10.pre-phi, i8* noundef nonnull %tmp.ptr, i32 noundef %i.4) #7
  store i32 0, i32* %13, align 8, !tbaa !12
  br label %if.end252

if.end252:                                        ; preds = %if.else243, %if.end236
  %i.5 = phi i32 [ %z.0, %if.end236 ], [ %call250, %if.else243 ]
  store i32 %i.5, i32* %12, align 8, !tbaa !18
  store i32 0, i32* %17, align 4, !tbaa !11
  %cmp255 = icmp slt i32 %i.5, 0
  br i1 %cmp255, label %if.then257, label %if.end259

if.then257:                                       ; preds = %if.end252
  store i32 0, i32* %buf_len10.pre-phi, align 8, !tbaa !10
  br label %while.end

if.end259:                                        ; preds = %if.end252
  %130 = load i32, i32* %buf_len10.pre-phi, align 8, !tbaa !10
  %cmp261.not = icmp sgt i32 %130, %outl.addr.1.ph542
  %outl.addr.1. = select i1 %cmp261.not, i32 %outl.addr.1.ph542, i32 %130
  %conv269 = sext i32 %outl.addr.1. to i64
  %call270 = call i8* @memcpy(i8* noundef %out.addr.1.ph543, i8* noundef nonnull %buf92, i64 noundef %conv269) #7
  %add271 = add nsw i32 %outl.addr.1., %ret.1.ph538
  store i32 %outl.addr.1., i32* %17, align 4, !tbaa !11
  %131 = load i32, i32* %buf_len10.pre-phi, align 8, !tbaa !10
  %cmp275 = icmp eq i32 %outl.addr.1., %131
  br i1 %cmp275, label %if.then277, label %if.end280

if.then277:                                       ; preds = %if.end259
  store i32 0, i32* %buf_len10.pre-phi, align 8, !tbaa !10
  store i32 0, i32* %17, align 4, !tbaa !11
  br label %if.end280

if.end280:                                        ; preds = %if.then277, %if.end259
  %sub281 = sub nsw i32 %outl.addr.1.ph542, %outl.addr.1.
  %add.ptr283 = getelementptr inbounds i8, i8* %out.addr.1.ph543, i64 %conv269
  %cmp41 = icmp sgt i32 %sub281, 0
  br i1 %cmp41, label %while.body.lr.ph, label %while.end, !llvm.loop !46

while.end:                                        ; preds = %if.end280, %while.body.lr.ph, %if.then55, %if.then57, %while.cond.backedge, %if.end40, %if.then257
  %ret.1.ph505 = phi i32 [ %ret.1.ph538, %if.then257 ], [ %ret.0, %if.end40 ], [ %ret.1.ph538, %while.cond.backedge ], [ %ret.1.ph538, %if.then57 ], [ %ret.1.ph538, %if.then55 ], [ %add271, %if.end280 ], [ %ret.1.ph538, %while.body.lr.ph ]
  %ret_code.2 = phi i32 [ 0, %if.then257 ], [ 0, %if.end40 ], [ %call52, %if.then55 ], [ %call52, %if.then57 ], [ %ret_code.1, %while.cond.backedge ], [ %ret_code.1, %if.end280 ], [ %ret_code.0.ph541, %while.body.lr.ph ]
  call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #7
  %cmp284 = icmp eq i32 %ret.1.ph505, 0
  %cond289 = select i1 %cmp284, i32 %ret_code.2, i32 %ret.1.ph505
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %while.end
  %retval.0 = phi i32 [ %cond289, %while.end ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @b64_puts(%struct.bio_st* noundef %b, i8* noundef %str) #2 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #10
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @b64_write(%struct.bio_st* noundef %b, i8* noundef %str, i32 noundef %conv) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @b64_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #2 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #7
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %cmp = icmp eq i8* %call, null
  %cmp2 = icmp eq %struct.bio_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 13, label %sw.bb10
    i32 10, label %sw.bb31
    i32 11, label %again.preheader
    i32 101, label %sw.bb90
    i32 12, label %cleanup
  ]

again.preheader:                                  ; preds = %if.end
  %buf_len50 = bitcast i8* %call to i32*
  %buf_off51 = getelementptr inbounds i8, i8* %call, i64 4
  %0 = bitcast i8* %buf_off51 to i32*
  %tmp_len = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %tmp_len to i32*
  %buf = getelementptr inbounds i8, i8* %call, i64 40
  %tmp = getelementptr inbounds i8, i8* %call, i64 1542
  %encode73 = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %encode73 to i32*
  %base6477 = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %base6477 to %struct.evp_Encode_Ctx_st**
  br label %while.cond

sw.bb:                                            ; preds = %if.end
  %cont = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %cont to i32*
  store i32 1, i32* %4, align 8, !tbaa !18
  %start = getelementptr inbounds i8, i8* %call, i64 20
  %5 = bitcast i8* %start to i32*
  store i32 1, i32* %5, align 4, !tbaa !19
  %encode = getelementptr inbounds i8, i8* %call, i64 16
  %6 = bitcast i8* %encode to i32*
  store i32 0, i32* %6, align 8, !tbaa !4
  %call3 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 1, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %cont5 = getelementptr inbounds i8, i8* %call, i64 24
  %7 = bitcast i8* %cont5 to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !18
  %cmp6 = icmp slt i32 %8, 1
  br i1 %cmp6, label %cleanup, label %if.else

if.else:                                          ; preds = %sw.bb4
  %call8 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 2, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  %buf_len = bitcast i8* %call to i32*
  %9 = load i32, i32* %buf_len, align 8, !tbaa !10
  %buf_off = getelementptr inbounds i8, i8* %call, i64 4
  %10 = bitcast i8* %buf_off to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !11
  %cmp11.not = icmp slt i32 %9, %11
  br i1 %cmp11.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %sw.bb10
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 472) #8
  unreachable

cond.end:                                         ; preds = %sw.bb10
  %sub = sub nsw i32 %9, %11
  %cmp14 = icmp eq i32 %sub, 0
  br i1 %cmp14, label %land.lhs.true, label %if.else24

land.lhs.true:                                    ; preds = %cond.end
  %encode16 = getelementptr inbounds i8, i8* %call, i64 16
  %12 = bitcast i8* %encode16 to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !4
  %cmp17.not = icmp eq i32 %13, 0
  br i1 %cmp17.not, label %if.then27, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true
  %base64 = getelementptr inbounds i8, i8* %call, i64 32
  %14 = bitcast i8* %base64 to %struct.evp_Encode_Ctx_st**
  %15 = load %struct.evp_Encode_Ctx_st*, %struct.evp_Encode_Ctx_st** %14, align 8, !tbaa !13
  %call20 = tail call i32 @EVP_ENCODE_CTX_num(%struct.evp_Encode_Ctx_st* noundef %15) #7
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.then27, label %cleanup

if.else24:                                        ; preds = %cond.end
  %conv = sext i32 %sub to i64
  %cmp25 = icmp slt i32 %sub, 1
  br i1 %cmp25, label %if.then27, label %cleanup

if.then27:                                        ; preds = %land.lhs.true, %land.lhs.true19, %if.else24
  %call28 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 13, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  %buf_len32 = bitcast i8* %call to i32*
  %16 = load i32, i32* %buf_len32, align 8, !tbaa !10
  %buf_off33 = getelementptr inbounds i8, i8* %call, i64 4
  %17 = bitcast i8* %buf_off33 to i32*
  %18 = load i32, i32* %17, align 4, !tbaa !11
  %cmp34.not = icmp slt i32 %16, %18
  br i1 %cmp34.not, label %cond.false37, label %cond.end38

cond.false37:                                     ; preds = %sw.bb31
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 481) #8
  unreachable

cond.end38:                                       ; preds = %sw.bb31
  %sub42 = sub nsw i32 %16, %18
  %conv43 = sext i32 %sub42 to i64
  %cmp44 = icmp slt i32 %sub42, 1
  br i1 %cmp44, label %if.then46, label %cleanup

if.then46:                                        ; preds = %cond.end38
  %call47 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 10, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

while.cond:                                       ; preds = %while.cond.backedge, %again.preheader
  %19 = load i32, i32* %buf_len50, align 8, !tbaa !10
  %20 = load i32, i32* %0, align 4, !tbaa !11
  %cmp52.not = icmp eq i32 %19, %20
  br i1 %cmp52.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call54 = tail call i32 @b64_write(%struct.bio_st* noundef %b, i8* noundef null, i32 noundef 0) #11
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body, %if.then64, %if.then81
  br label %while.cond, !llvm.loop !47

if.then57:                                        ; preds = %while.body
  %conv58 = sext i32 %call54 to i64
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %call60 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %b, i32 noundef -1) #7
  %and = and i32 %call60, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else72, label %if.then61

if.then61:                                        ; preds = %while.end
  %21 = load i32, i32* %1, align 8, !tbaa !12
  %cmp62.not = icmp eq i32 %21, 0
  br i1 %cmp62.not, label %if.end88, label %if.then64

if.then64:                                        ; preds = %if.then61
  %call67 = tail call i32 @EVP_EncodeBlock(i8* noundef nonnull %buf, i8* noundef nonnull %tmp, i32 noundef %21) #7
  store i32 %call67, i32* %buf_len50, align 8, !tbaa !10
  store i32 0, i32* %0, align 4, !tbaa !11
  store i32 0, i32* %1, align 8, !tbaa !12
  br label %while.cond.backedge

if.else72:                                        ; preds = %while.end
  %22 = load i32, i32* %2, align 8, !tbaa !4
  %cmp74.not = icmp eq i32 %22, 0
  br i1 %cmp74.not, label %if.end88, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %if.else72
  %23 = load %struct.evp_Encode_Ctx_st*, %struct.evp_Encode_Ctx_st** %3, align 8, !tbaa !13
  %call78 = tail call i32 @EVP_ENCODE_CTX_num(%struct.evp_Encode_Ctx_st* noundef %23) #7
  %cmp79.not = icmp eq i32 %call78, 0
  br i1 %cmp79.not, label %if.end88, label %if.then81

if.then81:                                        ; preds = %land.lhs.true76
  store i32 0, i32* %0, align 4, !tbaa !11
  %24 = load %struct.evp_Encode_Ctx_st*, %struct.evp_Encode_Ctx_st** %3, align 8, !tbaa !13
  tail call void @EVP_EncodeFinal(%struct.evp_Encode_Ctx_st* noundef %24, i8* noundef nonnull %buf, i32* noundef nonnull %buf_len50) #7
  br label %while.cond.backedge

if.end88:                                         ; preds = %if.else72, %land.lhs.true76, %if.then61
  %call89 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 11, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb90:                                          ; preds = %if.end
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  %call91 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 101, i64 noundef %num, i8* noundef %ptr) #7
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #7
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %call93 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end88, %sw.bb90, %if.end, %sw.default, %if.else, %if.else24, %if.then27, %if.then46, %cond.end38, %sw.bb4, %land.lhs.true19, %entry, %if.then57
  %retval.0 = phi i64 [ %conv58, %if.then57 ], [ 0, %entry ], [ %call93, %sw.default ], [ 1, %if.end ], [ %call91, %sw.bb90 ], [ %call89, %if.end88 ], [ %call47, %if.then46 ], [ %conv43, %cond.end38 ], [ %call28, %if.then27 ], [ %conv, %if.else24 ], [ %call8, %if.else ], [ %call3, %sw.bb ], [ 1, %sw.bb4 ], [ 1, %land.lhs.true19 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @b64_new(%struct.bio_st* noundef %bi) #2 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 2568, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 71) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.b64_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cont = getelementptr inbounds i8, i8* %call, i64 24
  %0 = bitcast i8* %cont to i32*
  store i32 1, i32* %0, align 8, !tbaa !18
  %start = getelementptr inbounds i8, i8* %call, i64 20
  %1 = bitcast i8* %start to i32*
  store i32 1, i32* %1, align 4, !tbaa !19
  %call1 = tail call %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() #7
  %base64 = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %base64 to %struct.evp_Encode_Ctx_st**
  store %struct.evp_Encode_Ctx_st* %call1, %struct.evp_Encode_Ctx_st** %2, align 8, !tbaa !13
  %cmp3 = icmp eq %struct.evp_Encode_Ctx_st* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 80) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @BIO_set_data(%struct.bio_st* noundef %bi, i8* noundef nonnull %call) #7
  tail call void @BIO_set_init(%struct.bio_st* noundef %bi, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @b64_free(%struct.bio_st* noundef %a) #2 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %a) #7
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %base64 = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %base64 to %struct.evp_Encode_Ctx_st**
  %1 = load %struct.evp_Encode_Ctx_st*, %struct.evp_Encode_Ctx_st** %0, align 8, !tbaa !13
  tail call void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef %1) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef 101) #7
  tail call void @BIO_set_data(%struct.bio_st* noundef nonnull %a, i8* noundef null) #7
  tail call void @BIO_set_init(%struct.bio_st* noundef nonnull %a, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @b64_callback_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #2 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #7
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i8* @BIO_get_data(%struct.bio_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #1

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @EVP_EncodeInit(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i32 @EVP_EncodeBlock(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_EncodeUpdate(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare void @EVP_DecodeInit(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #1

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_DecodeUpdate(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_DecodeBlock(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #6

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_ENCODE_CTX_num(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #1

declare void @EVP_EncodeFinal(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_set_data(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #1

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 16}
!5 = !{!"b64_struct", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !9, i64 32, !7, i64 40, !7, i64 1542}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!5, !6, i64 4}
!12 = !{!5, !6, i64 8}
!13 = !{!5, !9, i64 32}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = !{!5, !6, i64 24}
!19 = !{!5, !6, i64 20}
!20 = !{!6, !6, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!5, !6, i64 12}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !15, !29}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !15, !29, !33}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !15, !29}
!36 = distinct !{!36, !15}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !15, !29}
!43 = distinct !{!43, !15, !29, !33}
!44 = distinct !{!44, !31}
!45 = distinct !{!45, !15, !29}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
