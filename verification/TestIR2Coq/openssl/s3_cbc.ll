; ModuleID = 'ssl/s3_cbc.c'
source_filename = "ssl/s3_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_st = type opaque
%union.anon = type { double, [208 x i8] }
%struct.MD5state_st = type { i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
%struct.SHA256state_st = type { [8 x i32], i32, i32, [16 x i32], i32, i32 }
%struct.SHA512state_st = type { [8 x i64], i64, i64, %union.anon.0, i32, i32 }
%union.anon.0 = type { [16 x i64] }
%struct.evp_md_ctx_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SHA2-224\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SHA2-384\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SHA2-512\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_cbc_digest_record(%struct.evp_md_st* noundef %md, i8* noundef %md_out, i64* noundef writeonly %md_out_size, i8* noundef %header, i8* noundef %data, i64 noundef %data_size, i64 noundef %data_plus_mac_plus_padding_size, i8* noundef %mac_secret, i64 noundef %mac_secret_length, i8 noundef signext %is_sslv3) local_unnamed_addr #0 {
entry:
  %md_state = alloca %union.anon, align 8
  %length_bytes = alloca [16 x i8], align 16
  %hmac_pad = alloca [128 x i8], align 16
  %first_block = alloca [128 x i8], align 16
  %mac_out = alloca [64 x i8], align 16
  %md_out_size_u = alloca i32, align 4
  %block = alloca [128 x i8], align 16
  %0 = bitcast %union.anon* %md_state to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %0) #8
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %length_bytes, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8
  %2 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #8
  %3 = getelementptr inbounds [128 x i8], [128 x i8]* %first_block, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #8
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %mac_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #8
  %5 = bitcast i32* %md_out_size_u to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #8
  %cmp = icmp ult i64 %data_plus_mac_plus_padding_size, 1048576
  br i1 %cmp, label %if.end, label %cleanup388

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %md, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %6 = bitcast %union.anon* %md_state to %struct.MD5state_st*
  %call5 = call i32 @MD5_Init(%struct.MD5state_st* noundef nonnull %6) #9
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %cleanup388, label %if.end89

if.else:                                          ; preds = %if.end
  %call10 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %md, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else20, label %if.then12

if.then12:                                        ; preds = %if.else
  %7 = bitcast %union.anon* %md_state to %struct.SHAstate_st*
  %call15 = call i32 @SHA1_Init(%struct.SHAstate_st* noundef nonnull %7) #9
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %cleanup388, label %if.end89

if.else20:                                        ; preds = %if.else
  %call21 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %md, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #9
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else31, label %if.then23

if.then23:                                        ; preds = %if.else20
  %8 = bitcast %union.anon* %md_state to %struct.SHA256state_st*
  %call26 = call i32 @SHA224_Init(%struct.SHA256state_st* noundef nonnull %8) #9
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %cleanup388, label %if.end89

if.else31:                                        ; preds = %if.else20
  %call32 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %md, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #9
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else42, label %if.then34

if.then34:                                        ; preds = %if.else31
  %9 = bitcast %union.anon* %md_state to %struct.SHA256state_st*
  %call37 = call i32 @SHA256_Init(%struct.SHA256state_st* noundef nonnull %9) #9
  %cmp38 = icmp slt i32 %call37, 1
  br i1 %cmp38, label %cleanup388, label %if.end89

if.else42:                                        ; preds = %if.else31
  %call43 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %md, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #9
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.else53, label %if.then45

if.then45:                                        ; preds = %if.else42
  %10 = bitcast %union.anon* %md_state to %struct.SHA512state_st*
  %call48 = call i32 @SHA384_Init(%struct.SHA512state_st* noundef nonnull %10) #9
  %cmp49 = icmp slt i32 %call48, 1
  br i1 %cmp49, label %cleanup388, label %if.end89

if.else53:                                        ; preds = %if.else42
  %call54 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %md, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #9
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.else64, label %if.then56

if.then56:                                        ; preds = %if.else53
  %11 = bitcast %union.anon* %md_state to %struct.SHA512state_st*
  %call59 = call i32 @SHA512_Init(%struct.SHA512state_st* noundef nonnull %11) #9
  %cmp60 = icmp slt i32 %call59, 1
  br i1 %cmp60, label %cleanup388, label %if.end89

if.else64:                                        ; preds = %if.else53
  %cmp65.not = icmp eq i64* %md_out_size, null
  br i1 %cmp65.not, label %cleanup388, label %if.then67

if.then67:                                        ; preds = %if.else64
  store i64 0, i64* %md_out_size, align 8, !tbaa !4
  br label %cleanup388

if.end89:                                         ; preds = %if.then3, %if.then12, %if.then23, %if.then34, %if.then45, %if.then56
  %sslv3_pad_length.0 = phi i64 [ 48, %if.then3 ], [ 40, %if.then12 ], [ 40, %if.then23 ], [ 40, %if.then34 ], [ 40, %if.then45 ], [ 40, %if.then56 ]
  %md_length_size.0 = phi i64 [ 8, %if.then3 ], [ 8, %if.then12 ], [ 8, %if.then23 ], [ 8, %if.then34 ], [ 16, %if.then45 ], [ 16, %if.then56 ]
  %tobool146.not = phi i1 [ true, %if.then3 ], [ false, %if.then12 ], [ false, %if.then23 ], [ false, %if.then34 ], [ false, %if.then45 ], [ false, %if.then56 ]
  %12 = phi i1 [ true, %if.then3 ], [ true, %if.then12 ], [ true, %if.then23 ], [ true, %if.then34 ], [ false, %if.then45 ], [ false, %if.then56 ]
  %md_block_size.0 = phi i64 [ 64, %if.then3 ], [ 64, %if.then12 ], [ 64, %if.then23 ], [ 64, %if.then34 ], [ 128, %if.then45 ], [ 128, %if.then56 ]
  %md_size.0 = phi i64 [ 16, %if.then3 ], [ 20, %if.then12 ], [ 28, %if.then23 ], [ 32, %if.then34 ], [ 48, %if.then45 ], [ 64, %if.then56 ]
  %md_transform.0 = phi void (i8*, i8*)* [ bitcast (void (%struct.MD5state_st*, i8*)* @MD5_Transform to void (i8*, i8*)*), %if.then3 ], [ bitcast (void (%struct.SHAstate_st*, i8*)* @SHA1_Transform to void (i8*, i8*)*), %if.then12 ], [ bitcast (void (%struct.SHA256state_st*, i8*)* @SHA256_Transform to void (i8*, i8*)*), %if.then23 ], [ bitcast (void (%struct.SHA256state_st*, i8*)* @SHA256_Transform to void (i8*, i8*)*), %if.then34 ], [ bitcast (void (%struct.SHA512state_st*, i8*)* @SHA512_Transform to void (i8*, i8*)*), %if.then45 ], [ bitcast (void (%struct.SHA512state_st*, i8*)* @SHA512_Transform to void (i8*, i8*)*), %if.then56 ]
  %md_final_raw.0 = phi void (i8*, i8*)* [ @tls1_md5_final_raw, %if.then3 ], [ @tls1_sha1_final_raw, %if.then12 ], [ @tls1_sha256_final_raw, %if.then23 ], [ @tls1_sha256_final_raw, %if.then34 ], [ @tls1_sha512_final_raw, %if.then45 ], [ @tls1_sha512_final_raw, %if.then56 ]
  %tobool90.not = icmp eq i8 %is_sslv3, 0
  %add = add i64 %mac_secret_length, 11
  %add94 = add i64 %add, %sslv3_pad_length.0
  %header_length.0 = select i1 %tobool90.not, i64 13, i64 %add94
  br i1 %tobool90.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end89
  %add99 = add nuw nsw i64 %md_block_size.0, 255
  %sub = add nuw nsw i64 %add99, %md_size.0
  %div.lhs.trunc = trunc i64 %sub to i16
  %div.rhs.trunc = trunc i64 %md_block_size.0 to i16
  %div620 = udiv i16 %div.lhs.trunc, %div.rhs.trunc
  %narrow = add nuw nsw i16 %div620, 1
  %add100 = zext i16 %narrow to i64
  br label %cond.end

cond.end:                                         ; preds = %if.end89, %cond.false
  %cond = phi i64 [ %add100, %cond.false ], [ 2, %if.end89 ]
  %add101 = add i64 %header_length.0, %data_plus_mac_plus_padding_size
  %sub102 = add nsw i64 %md_length_size.0, -1
  %add105 = add i64 %sub102, %add101
  %add106 = add i64 %add105, %md_block_size.0
  %sub107 = sub i64 %add106, %md_size.0
  %div108 = udiv i64 %sub107, %md_block_size.0
  %add109 = add i64 %header_length.0, %data_size
  %rem = urem i64 %add109, %md_block_size.0
  %div110 = udiv i64 %add109, %md_block_size.0
  %add111 = add i64 %add109, %md_length_size.0
  %div112 = udiv i64 %add111, %md_block_size.0
  %not.tobool97.not = xor i1 %tobool90.not, true
  %13 = zext i1 %not.tobool97.not to i64
  %add117 = add nuw nsw i64 %cond, %13
  %cmp118 = icmp ugt i64 %div108, %add117
  %sub121 = sub nsw i64 %div108, %cond
  %mul = mul i64 %sub121, %md_block_size.0
  %k.0 = select i1 %cmp118, i64 %mul, i64 0
  %num_starting_blocks.0 = select i1 %cmp118, i64 %sub121, i64 0
  br i1 %tobool90.not, label %if.then125, label %if.end145

if.then125:                                       ; preds = %cond.end
  %14 = add i64 %add109, %md_block_size.0
  %call129 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef %md_block_size.0) #9
  %cmp130 = icmp ult i64 %mac_secret_length, 129
  br i1 %cmp130, label %iter.check, label %cleanup388

iter.check:                                       ; preds = %if.then125
  %call137 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef %mac_secret, i64 noundef %mac_secret_length) #9
  %15 = bitcast [128 x i8]* %hmac_pad to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %15, align 16, !tbaa !8
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 16
  %17 = bitcast i8* %16 to <16 x i8>*
  %wide.load624 = load <16 x i8>, <16 x i8>* %17, align 16, !tbaa !8
  %18 = xor <16 x i8> %wide.load, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %19 = xor <16 x i8> %wide.load624, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %20 = bitcast [128 x i8]* %hmac_pad to <16 x i8>*
  store <16 x i8> %18, <16 x i8>* %20, align 16, !tbaa !8
  %21 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> %19, <16 x i8>* %21, align 16, !tbaa !8
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 32
  %23 = bitcast i8* %22 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %23, align 16, !tbaa !8
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 48
  %25 = bitcast i8* %24 to <16 x i8>*
  %wide.load624.1 = load <16 x i8>, <16 x i8>* %25, align 16, !tbaa !8
  %26 = xor <16 x i8> %wide.load.1, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %27 = xor <16 x i8> %wide.load624.1, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %28 = bitcast i8* %22 to <16 x i8>*
  store <16 x i8> %26, <16 x i8>* %28, align 16, !tbaa !8
  %29 = bitcast i8* %24 to <16 x i8>*
  store <16 x i8> %27, <16 x i8>* %29, align 16, !tbaa !8
  br i1 %12, label %for.end, label %vector.body.2, !llvm.loop !9

vector.body.2:                                    ; preds = %iter.check
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 64
  %31 = bitcast i8* %30 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %31, align 16, !tbaa !8
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 80
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load624.2 = load <16 x i8>, <16 x i8>* %33, align 16, !tbaa !8
  %34 = xor <16 x i8> %wide.load.2, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %35 = xor <16 x i8> %wide.load624.2, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %36 = bitcast i8* %30 to <16 x i8>*
  store <16 x i8> %34, <16 x i8>* %36, align 16, !tbaa !8
  %37 = bitcast i8* %32 to <16 x i8>*
  store <16 x i8> %35, <16 x i8>* %37, align 16, !tbaa !8
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 96
  %39 = bitcast i8* %38 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %39, align 16, !tbaa !8
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 112
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load624.3 = load <16 x i8>, <16 x i8>* %41, align 16, !tbaa !8
  %42 = xor <16 x i8> %wide.load.3, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %43 = xor <16 x i8> %wide.load624.3, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %44 = bitcast i8* %38 to <16 x i8>*
  store <16 x i8> %42, <16 x i8>* %44, align 16, !tbaa !8
  %45 = bitcast i8* %40 to <16 x i8>*
  store <16 x i8> %43, <16 x i8>* %45, align 16, !tbaa !8
  br label %for.end

for.end:                                          ; preds = %vector.body.2, %iter.check
  call void %md_transform.0(i8* noundef nonnull %0, i8* noundef nonnull %2) #9, !callees !12
  br label %if.end145

if.end145:                                        ; preds = %for.end, %cond.end
  %bits.0.in = phi i64 [ %add109, %cond.end ], [ %14, %for.end ]
  %bits.0 = shl i64 %bits.0.in, 3
  br i1 %tobool146.not, label %if.else165, label %if.then147

if.then147:                                       ; preds = %if.end145
  %sub149 = add nsw i64 %md_length_size.0, -4
  %call150 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef %sub149) #9
  %shr = lshr i64 %bits.0, 24
  %conv151 = trunc i64 %shr to i8
  %arrayidx153 = getelementptr inbounds [16 x i8], [16 x i8]* %length_bytes, i64 0, i64 %sub149
  store i8 %conv151, i8* %arrayidx153, align 4, !tbaa !8
  %shr154 = lshr i64 %bits.0, 16
  %conv155 = trunc i64 %shr154 to i8
  %sub156 = add nsw i64 %md_length_size.0, -3
  %arrayidx157 = getelementptr inbounds [16 x i8], [16 x i8]* %length_bytes, i64 0, i64 %sub156
  store i8 %conv155, i8* %arrayidx157, align 1, !tbaa !8
  %shr158 = lshr i64 %bits.0, 8
  %conv159 = trunc i64 %shr158 to i8
  %sub160 = add nsw i64 %md_length_size.0, -2
  %arrayidx161 = getelementptr inbounds [16 x i8], [16 x i8]* %length_bytes, i64 0, i64 %sub160
  store i8 %conv159, i8* %arrayidx161, align 2, !tbaa !8
  %conv162 = trunc i64 %bits.0 to i8
  %arrayidx164 = getelementptr inbounds [16 x i8], [16 x i8]* %length_bytes, i64 0, i64 %sub102
  store i8 %conv162, i8* %arrayidx164, align 1, !tbaa !8
  br label %if.end183

if.else165:                                       ; preds = %if.end145
  %call167 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef %md_length_size.0) #9
  %shr168 = lshr i64 %bits.0, 24
  %conv169 = trunc i64 %shr168 to i8
  %sub170 = add nsw i64 %md_length_size.0, -5
  %arrayidx171 = getelementptr inbounds [16 x i8], [16 x i8]* %length_bytes, i64 0, i64 %sub170
  store i8 %conv169, i8* %arrayidx171, align 1, !tbaa !8
  %shr172 = lshr i64 %bits.0, 16
  %conv173 = trunc i64 %shr172 to i8
  %sub174 = add nsw i64 %md_length_size.0, -6
  %arrayidx175 = getelementptr inbounds [16 x i8], [16 x i8]* %length_bytes, i64 0, i64 %sub174
  store i8 %conv173, i8* %arrayidx175, align 2, !tbaa !8
  %shr176 = lshr i64 %bits.0, 8
  %conv177 = trunc i64 %shr176 to i8
  %sub178 = add nsw i64 %md_length_size.0, -7
  %arrayidx179 = getelementptr inbounds [16 x i8], [16 x i8]* %length_bytes, i64 0, i64 %sub178
  store i8 %conv177, i8* %arrayidx179, align 1, !tbaa !8
  %conv180 = trunc i64 %bits.0 to i8
  %sub181 = add nsw i64 %md_length_size.0, -8
  %arrayidx182 = getelementptr inbounds [16 x i8], [16 x i8]* %length_bytes, i64 0, i64 %sub181
  store i8 %conv180, i8* %arrayidx182, align 8, !tbaa !8
  br label %if.end183

if.end183:                                        ; preds = %if.else165, %if.then147
  %cmp184.not = icmp eq i64 %k.0, 0
  br i1 %cmp184.not, label %if.end243, label %if.then186

if.then186:                                       ; preds = %if.end183
  br i1 %tobool90.not, label %if.else219, label %if.then188

if.then188:                                       ; preds = %if.then186
  %cmp189.not = icmp ugt i64 %header_length.0, %md_block_size.0
  br i1 %cmp189.not, label %if.end192, label %cleanup388

if.end192:                                        ; preds = %if.then188
  %sub193 = sub i64 %header_length.0, %md_block_size.0
  call void %md_transform.0(i8* noundef nonnull %0, i8* noundef %header) #9, !callees !12
  %add.ptr = getelementptr inbounds i8, i8* %header, i64 %md_block_size.0
  %call197 = call i8* @memcpy(i8* noundef nonnull %3, i8* noundef nonnull %add.ptr, i64 noundef %sub193) #9
  %add.ptr199 = getelementptr inbounds [128 x i8], [128 x i8]* %first_block, i64 0, i64 %sub193
  %sub200 = sub i64 %md_block_size.0, %sub193
  %call201 = call i8* @memcpy(i8* noundef nonnull %add.ptr199, i8* noundef %data, i64 noundef %sub200) #9
  call void %md_transform.0(i8* noundef nonnull %0, i8* noundef nonnull %3) #9, !callees !12
  %div206 = udiv i64 %k.0, %md_block_size.0
  %sub207 = add i64 %div206, -1
  %cmp208601 = icmp ugt i64 %sub207, 1
  br i1 %cmp208601, label %for.body210.lr.ph, label %if.end243

for.body210.lr.ph:                                ; preds = %if.end192
  %idx.neg = sub i64 0, %sub193
  %add.ptr214 = getelementptr inbounds i8, i8* %data, i64 %idx.neg
  br label %for.body210

for.body210:                                      ; preds = %for.body210.lr.ph, %for.body210
  %i.1602 = phi i64 [ 1, %for.body210.lr.ph ], [ %inc217, %for.body210 ]
  %mul213 = mul i64 %i.1602, %md_block_size.0
  %add.ptr215 = getelementptr inbounds i8, i8* %add.ptr214, i64 %mul213
  call void %md_transform.0(i8* noundef nonnull %0, i8* noundef %add.ptr215) #9, !callees !12
  %inc217 = add nuw i64 %i.1602, 1
  %exitcond615.not = icmp eq i64 %inc217, %sub207
  br i1 %exitcond615.not, label %if.end243, label %for.body210, !llvm.loop !13

if.else219:                                       ; preds = %if.then186
  %call221 = call i8* @memcpy(i8* noundef nonnull %3, i8* noundef %header, i64 noundef 13) #9
  %add.ptr223 = getelementptr inbounds [128 x i8], [128 x i8]* %first_block, i64 0, i64 13
  %sub224 = add nsw i64 %md_block_size.0, -13
  %call225 = call i8* @memcpy(i8* noundef nonnull %add.ptr223, i8* noundef %data, i64 noundef %sub224) #9
  call void %md_transform.0(i8* noundef nonnull %0, i8* noundef nonnull %3) #9, !callees !12
  %div230 = udiv i64 %k.0, %md_block_size.0
  %cmp231603 = icmp ugt i64 %div230, 1
  br i1 %cmp231603, label %for.body233.preheader, label %if.end243

for.body233.preheader:                            ; preds = %if.else219
  %add.ptr237 = getelementptr inbounds i8, i8* %data, i64 -13
  br label %for.body233

for.body233:                                      ; preds = %for.body233.preheader, %for.body233
  %i.2604 = phi i64 [ %inc240, %for.body233 ], [ 1, %for.body233.preheader ]
  %mul236 = mul i64 %i.2604, %md_block_size.0
  %add.ptr238 = getelementptr inbounds i8, i8* %add.ptr237, i64 %mul236
  call void %md_transform.0(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr238) #9, !callees !12
  %inc240 = add nuw nsw i64 %i.2604, 1
  %exitcond616.not = icmp eq i64 %inc240, %div230
  br i1 %exitcond616.not, label %if.end243, label %for.body233, !llvm.loop !14

if.end243:                                        ; preds = %for.body210, %for.body233, %if.end192, %if.else219, %if.end183
  %call245 = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 64) #9
  %add247 = add i64 %num_starting_blocks.0, %cond
  %cmp248.not610 = icmp ugt i64 %num_starting_blocks.0, %add247
  br i1 %cmp248.not610, label %for.end328, label %for.body250.lr.ph

for.body250.lr.ph:                                ; preds = %if.end243
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %block, i64 0, i64 0
  %add276 = add nuw nsw i64 %rem, 1
  %sub292 = sub nsw i64 %md_block_size.0, %md_length_size.0
  %n.vec640 = and i64 %md_size.0, 112
  %47 = bitcast [128 x i8]* %block to <16 x i8>*
  %48 = bitcast [64 x i8]* %mac_out to <16 x i8>*
  %49 = bitcast [64 x i8]* %mac_out to <16 x i8>*
  %50 = icmp eq i64 %n.vec640, 16
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %block, i64 0, i64 16
  %52 = bitcast i8* %51 to <16 x i8>*
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %mac_out, i64 0, i64 16
  %54 = bitcast i8* %53 to <16 x i8>*
  %55 = bitcast i8* %53 to <16 x i8>*
  %56 = icmp eq i64 %n.vec640, 32
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %block, i64 0, i64 32
  %58 = bitcast i8* %57 to <16 x i8>*
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %mac_out, i64 0, i64 32
  %60 = bitcast i8* %59 to <16 x i8>*
  %61 = bitcast i8* %59 to <16 x i8>*
  %62 = icmp eq i64 %n.vec640, 48
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %block, i64 0, i64 48
  %64 = bitcast i8* %63 to <16 x i8>*
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %mac_out, i64 0, i64 48
  %66 = bitcast i8* %65 to <16 x i8>*
  %67 = bitcast i8* %65 to <16 x i8>*
  %cmp.n641 = icmp eq i64 %md_size.0, %n.vec640
  %n.vec.remaining651 = and i64 %md_size.0, 8
  %min.epilog.iters.check652.not.not = icmp eq i64 %n.vec.remaining651, 0
  %n.vec655 = and i64 %md_size.0, 120
  %cmp.n657 = icmp eq i64 %md_size.0, %n.vec655
  br label %for.body250

for.body250:                                      ; preds = %for.body250.lr.ph, %for.end325
  %i.3612 = phi i64 [ %num_starting_blocks.0, %for.body250.lr.ph ], [ %inc327, %for.end325 ]
  %k.1611 = phi i64 [ %k.0, %for.body250.lr.ph ], [ %inc270, %for.end325 ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %46) #8
  %call251 = call fastcc zeroext i8 @constant_time_eq_8_s(i64 noundef %i.3612, i64 noundef %div110) #10
  %call252 = call fastcc zeroext i8 @constant_time_eq_8_s(i64 noundef %i.3612, i64 noundef %div112) #10
  %neg287 = xor i8 %call252, -1
  %or = or i8 %call251, %neg287
  br label %for.body256

for.body256:                                      ; preds = %for.body250, %if.end300
  %j.0607 = phi i64 [ 0, %for.body250 ], [ %inc303, %if.end300 ]
  %k.2605 = phi i64 [ %k.1611, %for.body250 ], [ %inc270, %if.end300 ]
  %cmp257 = icmp ult i64 %k.2605, %header_length.0
  br i1 %cmp257, label %if.then259, label %if.else261

if.then259:                                       ; preds = %for.body256
  %arrayidx260 = getelementptr inbounds i8, i8* %header, i64 %k.2605
  br label %if.end269.sink.split

if.else261:                                       ; preds = %for.body256
  %cmp263 = icmp ult i64 %k.2605, %add101
  br i1 %cmp263, label %if.then265, label %if.end269

if.then265:                                       ; preds = %if.else261
  %sub266 = sub i64 %k.2605, %header_length.0
  %arrayidx267 = getelementptr inbounds i8, i8* %data, i64 %sub266
  br label %if.end269.sink.split

if.end269.sink.split:                             ; preds = %if.then259, %if.then265
  %arrayidx267.sink = phi i8* [ %arrayidx267, %if.then265 ], [ %arrayidx260, %if.then259 ]
  %68 = load i8, i8* %arrayidx267.sink, align 1, !tbaa !8
  br label %if.end269

if.end269:                                        ; preds = %if.end269.sink.split, %if.else261
  %b.0 = phi i8 [ 0, %if.else261 ], [ %68, %if.end269.sink.split ]
  %inc270 = add i64 %k.2605, 1
  %call272 = call fastcc zeroext i8 @constant_time_ge_8_s(i64 noundef %j.0607, i64 noundef %rem) #10
  %and597 = and i8 %call272, %call251
  %call277 = call fastcc zeroext i8 @constant_time_ge_8_s(i64 noundef %j.0607, i64 noundef %add276) #10
  %and279598 = and i8 %call277, %call251
  %call281 = call fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %and597, i8 noundef zeroext -128, i8 noundef zeroext %b.0) #10
  %and284 = xor i8 %and279598, %or
  %and290 = and i8 %and284, %call281
  %cmp293.not = icmp ult i64 %j.0607, %sub292
  br i1 %cmp293.not, label %if.end300, label %if.then295

if.then295:                                       ; preds = %if.end269
  %sub297 = sub i64 %j.0607, %sub292
  %arrayidx298 = getelementptr inbounds [16 x i8], [16 x i8]* %length_bytes, i64 0, i64 %sub297
  %69 = load i8, i8* %arrayidx298, align 1, !tbaa !8
  %call299 = call fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %call252, i8 noundef zeroext %69, i8 noundef zeroext %and290) #10
  br label %if.end300

if.end300:                                        ; preds = %if.then295, %if.end269
  %b.1 = phi i8 [ %call299, %if.then295 ], [ %and290, %if.end269 ]
  %arrayidx301 = getelementptr inbounds [128 x i8], [128 x i8]* %block, i64 0, i64 %j.0607
  store i8 %b.1, i8* %arrayidx301, align 1, !tbaa !8
  %inc303 = add nuw nsw i64 %j.0607, 1
  %exitcond617.not = icmp eq i64 %inc303, %md_block_size.0
  br i1 %exitcond617.not, label %iter.check635, label %for.body256, !llvm.loop !15

iter.check635:                                    ; preds = %if.end300
  call void %md_transform.0(i8* noundef nonnull %0, i8* noundef nonnull %46) #9, !callees !12
  call void %md_final_raw.0(i8* noundef nonnull %0, i8* noundef nonnull %46) #9, !callees !16
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %call252, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %wide.load643 = load <16 x i8>, <16 x i8>* %47, align 16, !tbaa !8
  %70 = and <16 x i8> %wide.load643, %broadcast.splat
  %wide.load644 = load <16 x i8>, <16 x i8>* %48, align 16, !tbaa !8
  %71 = or <16 x i8> %wide.load644, %70
  store <16 x i8> %71, <16 x i8>* %49, align 16, !tbaa !8
  br i1 %50, label %middle.block631, label %vector.body632.1, !llvm.loop !17

vector.body632.1:                                 ; preds = %iter.check635
  %wide.load643.1 = load <16 x i8>, <16 x i8>* %52, align 16, !tbaa !8
  %72 = and <16 x i8> %wide.load643.1, %broadcast.splat
  %wide.load644.1 = load <16 x i8>, <16 x i8>* %54, align 16, !tbaa !8
  %73 = or <16 x i8> %wide.load644.1, %72
  store <16 x i8> %73, <16 x i8>* %55, align 16, !tbaa !8
  br i1 %56, label %middle.block631, label %vector.body632.2, !llvm.loop !17

vector.body632.2:                                 ; preds = %vector.body632.1
  %wide.load643.2 = load <16 x i8>, <16 x i8>* %58, align 16, !tbaa !8
  %74 = and <16 x i8> %wide.load643.2, %broadcast.splat
  %wide.load644.2 = load <16 x i8>, <16 x i8>* %60, align 16, !tbaa !8
  %75 = or <16 x i8> %wide.load644.2, %74
  store <16 x i8> %75, <16 x i8>* %61, align 16, !tbaa !8
  br i1 %62, label %middle.block631, label %vector.body632.3, !llvm.loop !17

vector.body632.3:                                 ; preds = %vector.body632.2
  %wide.load643.3 = load <16 x i8>, <16 x i8>* %64, align 16, !tbaa !8
  %76 = and <16 x i8> %wide.load643.3, %broadcast.splat
  %wide.load644.3 = load <16 x i8>, <16 x i8>* %66, align 16, !tbaa !8
  %77 = or <16 x i8> %wide.load644.3, %76
  store <16 x i8> %77, <16 x i8>* %67, align 16, !tbaa !8
  br label %middle.block631

middle.block631:                                  ; preds = %vector.body632.3, %vector.body632.2, %vector.body632.1, %iter.check635
  br i1 %cmp.n641, label %for.end325, label %vec.epilog.iter.check649

vec.epilog.iter.check649:                         ; preds = %middle.block631
  br i1 %min.epilog.iters.check652.not.not, label %for.body314.preheader, label %vec.epilog.ph650

vec.epilog.ph650:                                 ; preds = %vec.epilog.iter.check649
  %broadcast.splatinsert660 = insertelement <8 x i8> poison, i8 %call252, i64 0
  %broadcast.splat661 = shufflevector <8 x i8> %broadcast.splatinsert660, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body648

vec.epilog.vector.body648:                        ; preds = %vec.epilog.vector.body648, %vec.epilog.ph650
  %index658 = phi i64 [ %n.vec640, %vec.epilog.ph650 ], [ %index.next663, %vec.epilog.vector.body648 ]
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %block, i64 0, i64 %index658
  %79 = bitcast i8* %78 to <8 x i8>*
  %wide.load659 = load <8 x i8>, <8 x i8>* %79, align 8, !tbaa !8
  %80 = and <8 x i8> %wide.load659, %broadcast.splat661
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %mac_out, i64 0, i64 %index658
  %82 = bitcast i8* %81 to <8 x i8>*
  %wide.load662 = load <8 x i8>, <8 x i8>* %82, align 8, !tbaa !8
  %83 = or <8 x i8> %wide.load662, %80
  %84 = bitcast i8* %81 to <8 x i8>*
  store <8 x i8> %83, <8 x i8>* %84, align 8, !tbaa !8
  %index.next663 = add nuw i64 %index658, 8
  %85 = icmp eq i64 %index.next663, %n.vec655
  br i1 %85, label %vec.epilog.middle.block646, label %vec.epilog.vector.body648, !llvm.loop !18

vec.epilog.middle.block646:                       ; preds = %vec.epilog.vector.body648
  br i1 %cmp.n657, label %for.end325, label %for.body314.preheader

for.body314.preheader:                            ; preds = %vec.epilog.iter.check649, %vec.epilog.middle.block646
  %j.1609.ph = phi i64 [ %n.vec640, %vec.epilog.iter.check649 ], [ %n.vec655, %vec.epilog.middle.block646 ]
  br label %for.body314

for.body314:                                      ; preds = %for.body314.preheader, %for.body314
  %j.1609 = phi i64 [ %inc324, %for.body314 ], [ %j.1609.ph, %for.body314.preheader ]
  %arrayidx315 = getelementptr inbounds [128 x i8], [128 x i8]* %block, i64 0, i64 %j.1609
  %86 = load i8, i8* %arrayidx315, align 1, !tbaa !8
  %and318595 = and i8 %86, %call252
  %arrayidx319 = getelementptr inbounds [64 x i8], [64 x i8]* %mac_out, i64 0, i64 %j.1609
  %87 = load i8, i8* %arrayidx319, align 1, !tbaa !8
  %or321596 = or i8 %87, %and318595
  store i8 %or321596, i8* %arrayidx319, align 1, !tbaa !8
  %inc324 = add nuw nsw i64 %j.1609, 1
  %exitcond618.not = icmp eq i64 %inc324, %md_size.0
  br i1 %exitcond618.not, label %for.end325, label %for.body314, !llvm.loop !20

for.end325:                                       ; preds = %for.body314, %vec.epilog.middle.block646, %middle.block631
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %46) #8
  %inc327 = add i64 %i.3612, 1
  %cmp248.not = icmp ugt i64 %inc327, %add247
  br i1 %cmp248.not, label %for.end328, label %for.body250, !llvm.loop !21

for.end328:                                       ; preds = %for.end325, %if.end243
  %call329 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #9
  %cmp330 = icmp eq %struct.evp_md_ctx_st* %call329, null
  br i1 %cmp330, label %err, label %if.end333

if.end333:                                        ; preds = %for.end328
  %call334 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call329, %struct.evp_md_st* noundef %md, %struct.engine_st* noundef null) #9
  %cmp335 = icmp slt i32 %call334, 1
  br i1 %cmp335, label %err, label %if.end338

if.end338:                                        ; preds = %if.end333
  br i1 %tobool90.not, label %vector.body665, label %if.then340

vector.body665:                                   ; preds = %if.end338
  %88 = bitcast [128 x i8]* %hmac_pad to <16 x i8>*
  %wide.load676 = load <16 x i8>, <16 x i8>* %88, align 16, !tbaa !8
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 16
  %90 = bitcast i8* %89 to <16 x i8>*
  %wide.load677 = load <16 x i8>, <16 x i8>* %90, align 16, !tbaa !8
  %91 = xor <16 x i8> %wide.load676, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %92 = xor <16 x i8> %wide.load677, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %93 = bitcast [128 x i8]* %hmac_pad to <16 x i8>*
  store <16 x i8> %91, <16 x i8>* %93, align 16, !tbaa !8
  %94 = bitcast i8* %89 to <16 x i8>*
  store <16 x i8> %92, <16 x i8>* %94, align 16, !tbaa !8
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 32
  %96 = bitcast i8* %95 to <16 x i8>*
  %wide.load676.1 = load <16 x i8>, <16 x i8>* %96, align 16, !tbaa !8
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 48
  %98 = bitcast i8* %97 to <16 x i8>*
  %wide.load677.1 = load <16 x i8>, <16 x i8>* %98, align 16, !tbaa !8
  %99 = xor <16 x i8> %wide.load676.1, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %100 = xor <16 x i8> %wide.load677.1, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %101 = bitcast i8* %95 to <16 x i8>*
  store <16 x i8> %99, <16 x i8>* %101, align 16, !tbaa !8
  %102 = bitcast i8* %97 to <16 x i8>*
  store <16 x i8> %100, <16 x i8>* %102, align 16, !tbaa !8
  br i1 %12, label %for.end369, label %vector.body665.2, !llvm.loop !22

vector.body665.2:                                 ; preds = %vector.body665
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 64
  %104 = bitcast i8* %103 to <16 x i8>*
  %wide.load676.2 = load <16 x i8>, <16 x i8>* %104, align 16, !tbaa !8
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 80
  %106 = bitcast i8* %105 to <16 x i8>*
  %wide.load677.2 = load <16 x i8>, <16 x i8>* %106, align 16, !tbaa !8
  %107 = xor <16 x i8> %wide.load676.2, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %108 = xor <16 x i8> %wide.load677.2, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %109 = bitcast i8* %103 to <16 x i8>*
  store <16 x i8> %107, <16 x i8>* %109, align 16, !tbaa !8
  %110 = bitcast i8* %105 to <16 x i8>*
  store <16 x i8> %108, <16 x i8>* %110, align 16, !tbaa !8
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 96
  %112 = bitcast i8* %111 to <16 x i8>*
  %wide.load676.3 = load <16 x i8>, <16 x i8>* %112, align 16, !tbaa !8
  %113 = getelementptr inbounds [128 x i8], [128 x i8]* %hmac_pad, i64 0, i64 112
  %114 = bitcast i8* %113 to <16 x i8>*
  %wide.load677.3 = load <16 x i8>, <16 x i8>* %114, align 16, !tbaa !8
  %115 = xor <16 x i8> %wide.load676.3, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %116 = xor <16 x i8> %wide.load677.3, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %117 = bitcast i8* %111 to <16 x i8>*
  store <16 x i8> %115, <16 x i8>* %117, align 16, !tbaa !8
  %118 = bitcast i8* %113 to <16 x i8>*
  store <16 x i8> %116, <16 x i8>* %118, align 16, !tbaa !8
  br label %for.end369

if.then340:                                       ; preds = %if.end338
  %call342 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 92, i64 noundef %sslv3_pad_length.0) #9
  %call343 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call329, i8* noundef %mac_secret, i64 noundef %mac_secret_length) #9
  %cmp344 = icmp slt i32 %call343, 1
  br i1 %cmp344, label %err, label %lor.lhs.false346

lor.lhs.false346:                                 ; preds = %if.then340
  %call348 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call329, i8* noundef nonnull %2, i64 noundef %sslv3_pad_length.0) #9
  %cmp349 = icmp slt i32 %call348, 1
  br i1 %cmp349, label %err, label %lor.lhs.false351

lor.lhs.false351:                                 ; preds = %lor.lhs.false346
  %call353 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call329, i8* noundef nonnull %4, i64 noundef %md_size.0) #9
  %cmp354 = icmp slt i32 %call353, 1
  br i1 %cmp354, label %err, label %if.end381

for.end369:                                       ; preds = %vector.body665.2, %vector.body665
  %call371 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call329, i8* noundef nonnull %2, i64 noundef %md_block_size.0) #9
  %cmp372 = icmp slt i32 %call371, 1
  br i1 %cmp372, label %err, label %lor.lhs.false374

lor.lhs.false374:                                 ; preds = %for.end369
  %call376 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call329, i8* noundef nonnull %4, i64 noundef %md_size.0) #9
  %cmp377 = icmp slt i32 %call376, 1
  br i1 %cmp377, label %err, label %if.end381

if.end381:                                        ; preds = %lor.lhs.false374, %lor.lhs.false351
  %call382 = call i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef nonnull %call329, i8* noundef %md_out, i32* noundef nonnull %md_out_size_u) #9
  %tobool383 = icmp ne i32 %call382, 0
  %tobool384 = icmp ne i64* %md_out_size, null
  %or.cond = and i1 %tobool384, %tobool383
  br i1 %or.cond, label %if.then385, label %err

if.then385:                                       ; preds = %if.end381
  %119 = load i32, i32* %md_out_size_u, align 4, !tbaa !23
  %conv386 = zext i32 %119 to i64
  store i64 %conv386, i64* %md_out_size, align 8, !tbaa !4
  br label %err

err:                                              ; preds = %if.end381, %if.then385, %for.end369, %lor.lhs.false374, %if.then340, %lor.lhs.false346, %lor.lhs.false351, %if.end333, %for.end328
  %ret.0 = phi i32 [ 0, %for.end328 ], [ 0, %if.end333 ], [ 0, %if.then340 ], [ 0, %lor.lhs.false346 ], [ 0, %lor.lhs.false351 ], [ 0, %for.end369 ], [ 0, %lor.lhs.false374 ], [ 1, %if.then385 ], [ 1, %if.end381 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call329) #9
  br label %cleanup388

cleanup388:                                       ; preds = %if.then188, %if.then125, %if.else64, %if.then67, %if.then56, %if.then45, %if.then34, %if.then23, %if.then12, %if.then3, %entry, %err
  %retval.1 = phi i32 [ %ret.0, %err ], [ 0, %entry ], [ 0, %if.then3 ], [ 0, %if.then12 ], [ 0, %if.then23 ], [ 0, %if.then34 ], [ 0, %if.then45 ], [ 0, %if.then56 ], [ 0, %if.then67 ], [ 0, %if.else64 ], [ 0, %if.then125 ], [ 0, %if.then188 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %0) #8
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @MD5_Init(%struct.MD5state_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @tls1_md5_final_raw(i8* nocapture noundef readonly %ctx, i8* nocapture noundef writeonly %md_out) unnamed_addr #3 {
entry:
  %A = bitcast i8* %ctx to i32*
  %0 = load i32, i32* %A, align 4, !tbaa !25
  %conv = trunc i32 %0 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %md_out, i64 1
  store i8 %conv, i8* %md_out, align 1, !tbaa !8
  %1 = load i32, i32* %A, align 4, !tbaa !25
  %shr = lshr i32 %1, 8
  %conv2 = trunc i32 %shr to i8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %md_out, i64 2
  store i8 %conv2, i8* %incdec.ptr, align 1, !tbaa !8
  %2 = load i32, i32* %A, align 4, !tbaa !25
  %shr5 = lshr i32 %2, 16
  %conv6 = trunc i32 %shr5 to i8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %md_out, i64 3
  store i8 %conv6, i8* %incdec.ptr3, align 1, !tbaa !8
  %3 = load i32, i32* %A, align 4, !tbaa !25
  %shr9 = lshr i32 %3, 24
  %conv10 = trunc i32 %shr9 to i8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %md_out, i64 4
  store i8 %conv10, i8* %incdec.ptr7, align 1, !tbaa !8
  %B = getelementptr inbounds i8, i8* %ctx, i64 4
  %4 = bitcast i8* %B to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !27
  %conv12 = trunc i32 %5 to i8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %md_out, i64 5
  store i8 %conv12, i8* %incdec.ptr11, align 1, !tbaa !8
  %6 = load i32, i32* %4, align 4, !tbaa !27
  %shr15 = lshr i32 %6, 8
  %conv16 = trunc i32 %shr15 to i8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %md_out, i64 6
  store i8 %conv16, i8* %incdec.ptr13, align 1, !tbaa !8
  %7 = load i32, i32* %4, align 4, !tbaa !27
  %shr19 = lshr i32 %7, 16
  %conv20 = trunc i32 %shr19 to i8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %md_out, i64 7
  store i8 %conv20, i8* %incdec.ptr17, align 1, !tbaa !8
  %8 = load i32, i32* %4, align 4, !tbaa !27
  %shr23 = lshr i32 %8, 24
  %conv24 = trunc i32 %shr23 to i8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %md_out, i64 8
  store i8 %conv24, i8* %incdec.ptr21, align 1, !tbaa !8
  %C = getelementptr inbounds i8, i8* %ctx, i64 8
  %9 = bitcast i8* %C to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !28
  %conv26 = trunc i32 %10 to i8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %md_out, i64 9
  store i8 %conv26, i8* %incdec.ptr25, align 1, !tbaa !8
  %11 = load i32, i32* %9, align 4, !tbaa !28
  %shr29 = lshr i32 %11, 8
  %conv30 = trunc i32 %shr29 to i8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %md_out, i64 10
  store i8 %conv30, i8* %incdec.ptr27, align 1, !tbaa !8
  %12 = load i32, i32* %9, align 4, !tbaa !28
  %shr33 = lshr i32 %12, 16
  %conv34 = trunc i32 %shr33 to i8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %md_out, i64 11
  store i8 %conv34, i8* %incdec.ptr31, align 1, !tbaa !8
  %13 = load i32, i32* %9, align 4, !tbaa !28
  %shr37 = lshr i32 %13, 24
  %conv38 = trunc i32 %shr37 to i8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %md_out, i64 12
  store i8 %conv38, i8* %incdec.ptr35, align 1, !tbaa !8
  %D = getelementptr inbounds i8, i8* %ctx, i64 12
  %14 = bitcast i8* %D to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !29
  %conv40 = trunc i32 %15 to i8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %md_out, i64 13
  store i8 %conv40, i8* %incdec.ptr39, align 1, !tbaa !8
  %16 = load i32, i32* %14, align 4, !tbaa !29
  %shr43 = lshr i32 %16, 8
  %conv44 = trunc i32 %shr43 to i8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %md_out, i64 14
  store i8 %conv44, i8* %incdec.ptr41, align 1, !tbaa !8
  %17 = load i32, i32* %14, align 4, !tbaa !29
  %shr47 = lshr i32 %17, 16
  %conv48 = trunc i32 %shr47 to i8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %md_out, i64 15
  store i8 %conv48, i8* %incdec.ptr45, align 1, !tbaa !8
  %18 = load i32, i32* %14, align 4, !tbaa !29
  %shr51 = lshr i32 %18, 24
  %conv52 = trunc i32 %shr51 to i8
  store i8 %conv52, i8* %incdec.ptr49, align 1, !tbaa !8
  ret void
}

declare void @MD5_Transform(%struct.MD5state_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SHA1_Init(%struct.SHAstate_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @tls1_sha1_final_raw(i8* nocapture noundef readonly %ctx, i8* nocapture noundef writeonly %md_out) unnamed_addr #3 {
entry:
  %h0 = bitcast i8* %ctx to i32*
  %0 = load i32, i32* %h0, align 4, !tbaa !30
  %shr = lshr i32 %0, 24
  %conv = trunc i32 %shr to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %md_out, i64 1
  store i8 %conv, i8* %md_out, align 1, !tbaa !8
  %1 = load i32, i32* %h0, align 4, !tbaa !30
  %shr2 = lshr i32 %1, 16
  %conv4 = trunc i32 %shr2 to i8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %md_out, i64 2
  store i8 %conv4, i8* %incdec.ptr, align 1, !tbaa !8
  %2 = load i32, i32* %h0, align 4, !tbaa !30
  %shr7 = lshr i32 %2, 8
  %conv9 = trunc i32 %shr7 to i8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %md_out, i64 3
  store i8 %conv9, i8* %incdec.ptr5, align 1, !tbaa !8
  %3 = load i32, i32* %h0, align 4, !tbaa !30
  %conv13 = trunc i32 %3 to i8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %md_out, i64 4
  store i8 %conv13, i8* %incdec.ptr10, align 1, !tbaa !8
  %h1 = getelementptr inbounds i8, i8* %ctx, i64 4
  %4 = bitcast i8* %h1 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !32
  %shr15 = lshr i32 %5, 24
  %conv17 = trunc i32 %shr15 to i8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %md_out, i64 5
  store i8 %conv17, i8* %incdec.ptr14, align 1, !tbaa !8
  %6 = load i32, i32* %4, align 4, !tbaa !32
  %shr20 = lshr i32 %6, 16
  %conv22 = trunc i32 %shr20 to i8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %md_out, i64 6
  store i8 %conv22, i8* %incdec.ptr18, align 1, !tbaa !8
  %7 = load i32, i32* %4, align 4, !tbaa !32
  %shr25 = lshr i32 %7, 8
  %conv27 = trunc i32 %shr25 to i8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %md_out, i64 7
  store i8 %conv27, i8* %incdec.ptr23, align 1, !tbaa !8
  %8 = load i32, i32* %4, align 4, !tbaa !32
  %conv31 = trunc i32 %8 to i8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %md_out, i64 8
  store i8 %conv31, i8* %incdec.ptr28, align 1, !tbaa !8
  %h2 = getelementptr inbounds i8, i8* %ctx, i64 8
  %9 = bitcast i8* %h2 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !33
  %shr33 = lshr i32 %10, 24
  %conv35 = trunc i32 %shr33 to i8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %md_out, i64 9
  store i8 %conv35, i8* %incdec.ptr32, align 1, !tbaa !8
  %11 = load i32, i32* %9, align 4, !tbaa !33
  %shr38 = lshr i32 %11, 16
  %conv40 = trunc i32 %shr38 to i8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %md_out, i64 10
  store i8 %conv40, i8* %incdec.ptr36, align 1, !tbaa !8
  %12 = load i32, i32* %9, align 4, !tbaa !33
  %shr43 = lshr i32 %12, 8
  %conv45 = trunc i32 %shr43 to i8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %md_out, i64 11
  store i8 %conv45, i8* %incdec.ptr41, align 1, !tbaa !8
  %13 = load i32, i32* %9, align 4, !tbaa !33
  %conv49 = trunc i32 %13 to i8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %md_out, i64 12
  store i8 %conv49, i8* %incdec.ptr46, align 1, !tbaa !8
  %h3 = getelementptr inbounds i8, i8* %ctx, i64 12
  %14 = bitcast i8* %h3 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !34
  %shr51 = lshr i32 %15, 24
  %conv53 = trunc i32 %shr51 to i8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %md_out, i64 13
  store i8 %conv53, i8* %incdec.ptr50, align 1, !tbaa !8
  %16 = load i32, i32* %14, align 4, !tbaa !34
  %shr56 = lshr i32 %16, 16
  %conv58 = trunc i32 %shr56 to i8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %md_out, i64 14
  store i8 %conv58, i8* %incdec.ptr54, align 1, !tbaa !8
  %17 = load i32, i32* %14, align 4, !tbaa !34
  %shr61 = lshr i32 %17, 8
  %conv63 = trunc i32 %shr61 to i8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %md_out, i64 15
  store i8 %conv63, i8* %incdec.ptr59, align 1, !tbaa !8
  %18 = load i32, i32* %14, align 4, !tbaa !34
  %conv67 = trunc i32 %18 to i8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %md_out, i64 16
  store i8 %conv67, i8* %incdec.ptr64, align 1, !tbaa !8
  %h4 = getelementptr inbounds i8, i8* %ctx, i64 16
  %19 = bitcast i8* %h4 to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !35
  %shr69 = lshr i32 %20, 24
  %conv71 = trunc i32 %shr69 to i8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %md_out, i64 17
  store i8 %conv71, i8* %incdec.ptr68, align 1, !tbaa !8
  %21 = load i32, i32* %19, align 4, !tbaa !35
  %shr74 = lshr i32 %21, 16
  %conv76 = trunc i32 %shr74 to i8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %md_out, i64 18
  store i8 %conv76, i8* %incdec.ptr72, align 1, !tbaa !8
  %22 = load i32, i32* %19, align 4, !tbaa !35
  %shr79 = lshr i32 %22, 8
  %conv81 = trunc i32 %shr79 to i8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %md_out, i64 19
  store i8 %conv81, i8* %incdec.ptr77, align 1, !tbaa !8
  %23 = load i32, i32* %19, align 4, !tbaa !35
  %conv85 = trunc i32 %23 to i8
  store i8 %conv85, i8* %incdec.ptr82, align 1, !tbaa !8
  ret void
}

declare void @SHA1_Transform(%struct.SHAstate_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SHA224_Init(%struct.SHA256state_st* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @tls1_sha256_final_raw(i8* nocapture noundef readonly %ctx, i8* nocapture noundef writeonly %md_out) unnamed_addr #4 {
entry:
  %arrayidx = bitcast i8* %ctx to i32*
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !23
  %shr = lshr i32 %0, 24
  %conv = trunc i32 %shr to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %md_out, i64 1
  store i8 %conv, i8* %md_out, align 1, !tbaa !8
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !23
  %shr4 = lshr i32 %1, 16
  %conv6 = trunc i32 %shr4 to i8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %md_out, i64 2
  store i8 %conv6, i8* %incdec.ptr, align 1, !tbaa !8
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !23
  %shr11 = lshr i32 %2, 8
  %conv13 = trunc i32 %shr11 to i8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %md_out, i64 3
  store i8 %conv13, i8* %incdec.ptr7, align 1, !tbaa !8
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !23
  %conv19 = trunc i32 %3 to i8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %md_out, i64 4
  store i8 %conv19, i8* %incdec.ptr14, align 1, !tbaa !8
  %arrayidx.1 = getelementptr inbounds i8, i8* %ctx, i64 4
  %4 = bitcast i8* %arrayidx.1 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !23
  %shr.1 = lshr i32 %5, 24
  %conv.1 = trunc i32 %shr.1 to i8
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %md_out, i64 5
  store i8 %conv.1, i8* %incdec.ptr20, align 1, !tbaa !8
  %6 = load i32, i32* %4, align 4, !tbaa !23
  %shr4.1 = lshr i32 %6, 16
  %conv6.1 = trunc i32 %shr4.1 to i8
  %incdec.ptr7.1 = getelementptr inbounds i8, i8* %md_out, i64 6
  store i8 %conv6.1, i8* %incdec.ptr.1, align 1, !tbaa !8
  %7 = load i32, i32* %4, align 4, !tbaa !23
  %shr11.1 = lshr i32 %7, 8
  %conv13.1 = trunc i32 %shr11.1 to i8
  %incdec.ptr14.1 = getelementptr inbounds i8, i8* %md_out, i64 7
  store i8 %conv13.1, i8* %incdec.ptr7.1, align 1, !tbaa !8
  %8 = load i32, i32* %4, align 4, !tbaa !23
  %conv19.1 = trunc i32 %8 to i8
  %incdec.ptr20.1 = getelementptr inbounds i8, i8* %md_out, i64 8
  store i8 %conv19.1, i8* %incdec.ptr14.1, align 1, !tbaa !8
  %arrayidx.2 = getelementptr inbounds i8, i8* %ctx, i64 8
  %9 = bitcast i8* %arrayidx.2 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !23
  %shr.2 = lshr i32 %10, 24
  %conv.2 = trunc i32 %shr.2 to i8
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %md_out, i64 9
  store i8 %conv.2, i8* %incdec.ptr20.1, align 1, !tbaa !8
  %11 = load i32, i32* %9, align 4, !tbaa !23
  %shr4.2 = lshr i32 %11, 16
  %conv6.2 = trunc i32 %shr4.2 to i8
  %incdec.ptr7.2 = getelementptr inbounds i8, i8* %md_out, i64 10
  store i8 %conv6.2, i8* %incdec.ptr.2, align 1, !tbaa !8
  %12 = load i32, i32* %9, align 4, !tbaa !23
  %shr11.2 = lshr i32 %12, 8
  %conv13.2 = trunc i32 %shr11.2 to i8
  %incdec.ptr14.2 = getelementptr inbounds i8, i8* %md_out, i64 11
  store i8 %conv13.2, i8* %incdec.ptr7.2, align 1, !tbaa !8
  %13 = load i32, i32* %9, align 4, !tbaa !23
  %conv19.2 = trunc i32 %13 to i8
  %incdec.ptr20.2 = getelementptr inbounds i8, i8* %md_out, i64 12
  store i8 %conv19.2, i8* %incdec.ptr14.2, align 1, !tbaa !8
  %arrayidx.3 = getelementptr inbounds i8, i8* %ctx, i64 12
  %14 = bitcast i8* %arrayidx.3 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !23
  %shr.3 = lshr i32 %15, 24
  %conv.3 = trunc i32 %shr.3 to i8
  %incdec.ptr.3 = getelementptr inbounds i8, i8* %md_out, i64 13
  store i8 %conv.3, i8* %incdec.ptr20.2, align 1, !tbaa !8
  %16 = load i32, i32* %14, align 4, !tbaa !23
  %shr4.3 = lshr i32 %16, 16
  %conv6.3 = trunc i32 %shr4.3 to i8
  %incdec.ptr7.3 = getelementptr inbounds i8, i8* %md_out, i64 14
  store i8 %conv6.3, i8* %incdec.ptr.3, align 1, !tbaa !8
  %17 = load i32, i32* %14, align 4, !tbaa !23
  %shr11.3 = lshr i32 %17, 8
  %conv13.3 = trunc i32 %shr11.3 to i8
  %incdec.ptr14.3 = getelementptr inbounds i8, i8* %md_out, i64 15
  store i8 %conv13.3, i8* %incdec.ptr7.3, align 1, !tbaa !8
  %18 = load i32, i32* %14, align 4, !tbaa !23
  %conv19.3 = trunc i32 %18 to i8
  %incdec.ptr20.3 = getelementptr inbounds i8, i8* %md_out, i64 16
  store i8 %conv19.3, i8* %incdec.ptr14.3, align 1, !tbaa !8
  %arrayidx.4 = getelementptr inbounds i8, i8* %ctx, i64 16
  %19 = bitcast i8* %arrayidx.4 to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !23
  %shr.4 = lshr i32 %20, 24
  %conv.4 = trunc i32 %shr.4 to i8
  %incdec.ptr.4 = getelementptr inbounds i8, i8* %md_out, i64 17
  store i8 %conv.4, i8* %incdec.ptr20.3, align 1, !tbaa !8
  %21 = load i32, i32* %19, align 4, !tbaa !23
  %shr4.4 = lshr i32 %21, 16
  %conv6.4 = trunc i32 %shr4.4 to i8
  %incdec.ptr7.4 = getelementptr inbounds i8, i8* %md_out, i64 18
  store i8 %conv6.4, i8* %incdec.ptr.4, align 1, !tbaa !8
  %22 = load i32, i32* %19, align 4, !tbaa !23
  %shr11.4 = lshr i32 %22, 8
  %conv13.4 = trunc i32 %shr11.4 to i8
  %incdec.ptr14.4 = getelementptr inbounds i8, i8* %md_out, i64 19
  store i8 %conv13.4, i8* %incdec.ptr7.4, align 1, !tbaa !8
  %23 = load i32, i32* %19, align 4, !tbaa !23
  %conv19.4 = trunc i32 %23 to i8
  %incdec.ptr20.4 = getelementptr inbounds i8, i8* %md_out, i64 20
  store i8 %conv19.4, i8* %incdec.ptr14.4, align 1, !tbaa !8
  %arrayidx.5 = getelementptr inbounds i8, i8* %ctx, i64 20
  %24 = bitcast i8* %arrayidx.5 to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !23
  %shr.5 = lshr i32 %25, 24
  %conv.5 = trunc i32 %shr.5 to i8
  %incdec.ptr.5 = getelementptr inbounds i8, i8* %md_out, i64 21
  store i8 %conv.5, i8* %incdec.ptr20.4, align 1, !tbaa !8
  %26 = load i32, i32* %24, align 4, !tbaa !23
  %shr4.5 = lshr i32 %26, 16
  %conv6.5 = trunc i32 %shr4.5 to i8
  %incdec.ptr7.5 = getelementptr inbounds i8, i8* %md_out, i64 22
  store i8 %conv6.5, i8* %incdec.ptr.5, align 1, !tbaa !8
  %27 = load i32, i32* %24, align 4, !tbaa !23
  %shr11.5 = lshr i32 %27, 8
  %conv13.5 = trunc i32 %shr11.5 to i8
  %incdec.ptr14.5 = getelementptr inbounds i8, i8* %md_out, i64 23
  store i8 %conv13.5, i8* %incdec.ptr7.5, align 1, !tbaa !8
  %28 = load i32, i32* %24, align 4, !tbaa !23
  %conv19.5 = trunc i32 %28 to i8
  %incdec.ptr20.5 = getelementptr inbounds i8, i8* %md_out, i64 24
  store i8 %conv19.5, i8* %incdec.ptr14.5, align 1, !tbaa !8
  %arrayidx.6 = getelementptr inbounds i8, i8* %ctx, i64 24
  %29 = bitcast i8* %arrayidx.6 to i32*
  %30 = load i32, i32* %29, align 4, !tbaa !23
  %shr.6 = lshr i32 %30, 24
  %conv.6 = trunc i32 %shr.6 to i8
  %incdec.ptr.6 = getelementptr inbounds i8, i8* %md_out, i64 25
  store i8 %conv.6, i8* %incdec.ptr20.5, align 1, !tbaa !8
  %31 = load i32, i32* %29, align 4, !tbaa !23
  %shr4.6 = lshr i32 %31, 16
  %conv6.6 = trunc i32 %shr4.6 to i8
  %incdec.ptr7.6 = getelementptr inbounds i8, i8* %md_out, i64 26
  store i8 %conv6.6, i8* %incdec.ptr.6, align 1, !tbaa !8
  %32 = load i32, i32* %29, align 4, !tbaa !23
  %shr11.6 = lshr i32 %32, 8
  %conv13.6 = trunc i32 %shr11.6 to i8
  %incdec.ptr14.6 = getelementptr inbounds i8, i8* %md_out, i64 27
  store i8 %conv13.6, i8* %incdec.ptr7.6, align 1, !tbaa !8
  %33 = load i32, i32* %29, align 4, !tbaa !23
  %conv19.6 = trunc i32 %33 to i8
  %incdec.ptr20.6 = getelementptr inbounds i8, i8* %md_out, i64 28
  store i8 %conv19.6, i8* %incdec.ptr14.6, align 1, !tbaa !8
  %arrayidx.7 = getelementptr inbounds i8, i8* %ctx, i64 28
  %34 = bitcast i8* %arrayidx.7 to i32*
  %35 = load i32, i32* %34, align 4, !tbaa !23
  %shr.7 = lshr i32 %35, 24
  %conv.7 = trunc i32 %shr.7 to i8
  %incdec.ptr.7 = getelementptr inbounds i8, i8* %md_out, i64 29
  store i8 %conv.7, i8* %incdec.ptr20.6, align 1, !tbaa !8
  %36 = load i32, i32* %34, align 4, !tbaa !23
  %shr4.7 = lshr i32 %36, 16
  %conv6.7 = trunc i32 %shr4.7 to i8
  %incdec.ptr7.7 = getelementptr inbounds i8, i8* %md_out, i64 30
  store i8 %conv6.7, i8* %incdec.ptr.7, align 1, !tbaa !8
  %37 = load i32, i32* %34, align 4, !tbaa !23
  %shr11.7 = lshr i32 %37, 8
  %conv13.7 = trunc i32 %shr11.7 to i8
  %incdec.ptr14.7 = getelementptr inbounds i8, i8* %md_out, i64 31
  store i8 %conv13.7, i8* %incdec.ptr7.7, align 1, !tbaa !8
  %38 = load i32, i32* %34, align 4, !tbaa !23
  %conv19.7 = trunc i32 %38 to i8
  store i8 %conv19.7, i8* %incdec.ptr14.7, align 1, !tbaa !8
  ret void
}

declare void @SHA256_Transform(%struct.SHA256state_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SHA256_Init(%struct.SHA256state_st* noundef) local_unnamed_addr #2

declare i32 @SHA384_Init(%struct.SHA512state_st* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @tls1_sha512_final_raw(i8* nocapture noundef readonly %ctx, i8* nocapture noundef writeonly %md_out) unnamed_addr #4 {
entry:
  %h = bitcast i8* %ctx to [8 x i64]*
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %md_out.addr.074 = phi i8* [ %md_out, %entry ], [ %incdec.ptr48, %for.body ]
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %h, i64 0, i64 %indvars.iv
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !36
  %shr = lshr i64 %0, 56
  %conv = trunc i64 %shr to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %md_out.addr.074, i64 1
  store i8 %conv, i8* %md_out.addr.074, align 1, !tbaa !8
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !36
  %shr4 = lshr i64 %1, 48
  %conv6 = trunc i64 %shr4 to i8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %md_out.addr.074, i64 2
  store i8 %conv6, i8* %incdec.ptr, align 1, !tbaa !8
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !36
  %shr11 = lshr i64 %2, 40
  %conv13 = trunc i64 %shr11 to i8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %md_out.addr.074, i64 3
  store i8 %conv13, i8* %incdec.ptr7, align 1, !tbaa !8
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !36
  %shr18 = lshr i64 %3, 32
  %conv20 = trunc i64 %shr18 to i8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %md_out.addr.074, i64 4
  store i8 %conv20, i8* %incdec.ptr14, align 1, !tbaa !8
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !36
  %shr25 = lshr i64 %4, 24
  %conv27 = trunc i64 %shr25 to i8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %md_out.addr.074, i64 5
  store i8 %conv27, i8* %incdec.ptr21, align 1, !tbaa !8
  %5 = load i64, i64* %arrayidx, align 8, !tbaa !36
  %shr32 = lshr i64 %5, 16
  %conv34 = trunc i64 %shr32 to i8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %md_out.addr.074, i64 6
  store i8 %conv34, i8* %incdec.ptr28, align 1, !tbaa !8
  %6 = load i64, i64* %arrayidx, align 8, !tbaa !36
  %shr39 = lshr i64 %6, 8
  %conv41 = trunc i64 %shr39 to i8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %md_out.addr.074, i64 7
  store i8 %conv41, i8* %incdec.ptr35, align 1, !tbaa !8
  %7 = load i64, i64* %arrayidx, align 8, !tbaa !36
  %conv47 = trunc i64 %7 to i8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %md_out.addr.074, i64 8
  store i8 %conv47, i8* %incdec.ptr42, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !38

for.end:                                          ; preds = %for.body
  ret void
}

declare void @SHA512_Transform(%struct.SHA512state_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @SHA512_Init(%struct.SHA512state_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i8 @constant_time_eq_8_s(i64 noundef %a, i64 noundef %b) unnamed_addr #6 {
entry:
  %call = tail call fastcc i64 @constant_time_eq_s(i64 noundef %a, i64 noundef %b) #10
  %conv = trunc i64 %call to i8
  ret i8 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i8 @constant_time_ge_8_s(i64 noundef %a, i64 noundef %b) unnamed_addr #6 {
entry:
  %call = tail call fastcc i64 @constant_time_ge_s(i64 noundef %a, i64 noundef %b) #10
  %conv = trunc i64 %call to i8
  ret i8 %conv
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc zeroext i8 @constant_time_select_8(i8 noundef zeroext %mask, i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #7 {
entry:
  %conv = zext i8 %mask to i32
  %conv1 = zext i8 %a to i32
  %conv2 = zext i8 %b to i32
  %call = tail call fastcc i32 @constant_time_select(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #10
  %conv3 = trunc i32 %call to i8
  ret i8 %conv3
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_eq_s(i64 noundef %a, i64 noundef %b) unnamed_addr #6 {
entry:
  %xor = xor i64 %b, %a
  %call = tail call fastcc i64 @constant_time_is_zero_s(i64 noundef %xor) #10
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_is_zero_s(i64 noundef %a) unnamed_addr #6 {
entry:
  %neg = xor i64 %a, -1
  %sub = add i64 %a, -1
  %and = and i64 %sub, %neg
  %call = tail call fastcc i64 @constant_time_msb_s(i64 noundef %and) #10
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_msb_s(i64 noundef %a) unnamed_addr #6 {
entry:
  %shr.neg = ashr i64 %a, 63
  ret i64 %shr.neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_ge_s(i64 noundef %a, i64 noundef %b) unnamed_addr #6 {
entry:
  %call = tail call fastcc i64 @constant_time_lt_s(i64 noundef %a, i64 noundef %b) #10
  %neg = xor i64 %call, -1
  ret i64 %neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_lt_s(i64 noundef %a, i64 noundef %b) unnamed_addr #6 {
entry:
  %xor = xor i64 %b, %a
  %sub = sub i64 %a, %b
  %xor1 = xor i64 %sub, %b
  %or = or i64 %xor1, %xor
  %xor2 = xor i64 %or, %a
  %call = tail call fastcc i64 @constant_time_msb_s(i64 noundef %xor2) #10
  ret i64 %call
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @constant_time_select(i32 noundef %mask, i32 noundef %a, i32 noundef %b) unnamed_addr #7 {
entry:
  %call = tail call fastcc i32 @value_barrier(i32 noundef %mask) #10
  %and = and i32 %call, %a
  %neg = xor i32 %mask, -1
  %call1 = tail call fastcc i32 @value_barrier(i32 noundef %neg) #10
  %and2 = and i32 %call1, %b
  %or = or i32 %and2, %and
  ret i32 %or
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal fastcc i32 @value_barrier(i32 noundef %a) unnamed_addr #7 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #11, !srcloc !39
  ret i32 %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{void (%struct.MD5state_st*, i8*)* @MD5_Transform, void (%struct.SHAstate_st*, i8*)* @SHA1_Transform, void (%struct.SHA256state_st*, i8*)* @SHA256_Transform, void (%struct.SHA512state_st*, i8*)* @SHA512_Transform}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = !{void (i8*, i8*)* @tls1_md5_final_raw, void (i8*, i8*)* @tls1_sha1_final_raw, void (i8*, i8*)* @tls1_sha256_final_raw, void (i8*, i8*)* @tls1_sha512_final_raw}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11, !19}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !10, !19, !11}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !6, i64 0}
!25 = !{!26, !24, i64 0}
!26 = !{!"MD5state_st", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !6, i64 24, !24, i64 88}
!27 = !{!26, !24, i64 4}
!28 = !{!26, !24, i64 8}
!29 = !{!26, !24, i64 12}
!30 = !{!31, !24, i64 0}
!31 = !{!"SHAstate_st", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !6, i64 28, !24, i64 92}
!32 = !{!31, !24, i64 4}
!33 = !{!31, !24, i64 8}
!34 = !{!31, !24, i64 12}
!35 = !{!31, !24, i64 16}
!36 = !{!37, !37, i64 0}
!37 = !{!"long long", !6, i64 0}
!38 = distinct !{!38, !10}
!39 = !{i64 57937}
