; ModuleID = 'crypto/aes/aes_ige.c'
source_filename = "crypto/aes/aes_ige.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_key_st = type { [60 x i32], i32 }

@.str = private unnamed_addr constant [43 x i8] c"assertion failed: in && out && key && ivec\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/aes/aes_ige.c\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"assertion failed: (AES_ENCRYPT == enc) || (AES_DECRYPT == enc)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"assertion failed: (length % AES_BLOCK_SIZE) == 0\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @AES_ige_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, %struct.aes_key_st* noundef %key, i8* noundef %ivec, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %tmp2 = alloca <2 x i64>, align 16
  %iv = alloca <2 x i64>, align 16
  %iv2 = alloca <2 x i64>, align 16
  %tmp102 = alloca <2 x i64>, align 16
  %tmp145 = alloca <2 x i64>, align 16
  %tmp2146.sroa.0 = alloca [2 x i64], align 8
  %iv147 = alloca <2 x i64>, align 16
  %iv2148 = alloca <2 x i64>, align 16
  %div = lshr i64 %length, 4
  %cmp = icmp eq i64 %length, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool = icmp ne i8* %in, null
  %tobool1 = icmp ne i8* %out, null
  %or.cond = and i1 %tobool, %tobool1
  %tobool3 = icmp ne %struct.aes_key_st* %key, null
  %or.cond193 = and i1 %or.cond, %tobool3
  %tobool5 = icmp ne i8* %ivec, null
  %or.cond194 = and i1 %or.cond193, %tobool5
  br i1 %or.cond194, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58) #6
  unreachable

cond.end:                                         ; preds = %if.end
  %cmp6 = icmp eq i32 %enc, 1
  %0 = icmp ult i32 %enc, 2
  br i1 %0, label %cond.end10, label %cond.false9

cond.false9:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 59) #6
  unreachable

cond.end10:                                       ; preds = %cond.end
  %rem = and i64 %length, 15
  %cmp12 = icmp eq i64 %rem, 0
  br i1 %cmp12, label %cond.end15, label %cond.false14

cond.false14:                                     ; preds = %cond.end10
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60) #6
  unreachable

cond.end15:                                       ; preds = %cond.end10
  %cmp19.not = icmp eq i8* %in, %out
  br i1 %cmp6, label %if.then18, label %if.else93

if.then18:                                        ; preds = %cond.end15
  br i1 %cmp19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then18
  %add.ptr = getelementptr inbounds i8, i8* %ivec, i64 16
  %tobool21.not331 = icmp ult i64 %length, 16
  br i1 %tobool21.not331, label %while.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then20, %for.cond.preheader
  %ivp.0336.in = phi i8* [ %out.addr.0333, %for.cond.preheader ], [ %ivec, %if.then20 ]
  %iv2p.0335.in = phi i8* [ %in.addr.0334, %for.cond.preheader ], [ %add.ptr, %if.then20 ]
  %in.addr.0334 = phi i8* [ %add.ptr41, %for.cond.preheader ], [ %in, %if.then20 ]
  %out.addr.0333 = phi i8* [ %add.ptr42, %for.cond.preheader ], [ %out, %if.then20 ]
  %len.0332 = phi i64 [ %dec, %for.cond.preheader ], [ %div, %if.then20 ]
  %arrayidx = bitcast i8* %in.addr.0334 to i64*
  %1 = load i64, i64* %arrayidx, align 1, !tbaa !4
  %arrayidx24 = bitcast i8* %ivp.0336.in to i64*
  %2 = load i64, i64* %arrayidx24, align 1, !tbaa !4
  %xor = xor i64 %2, %1
  %arrayidx26 = bitcast i8* %out.addr.0333 to i64*
  store i64 %xor, i64* %arrayidx26, align 1, !tbaa !4
  %arrayidx.1 = getelementptr inbounds i8, i8* %in.addr.0334, i64 8
  %3 = bitcast i8* %arrayidx.1 to i64*
  %4 = load i64, i64* %3, align 1, !tbaa !4
  %arrayidx24.1 = getelementptr inbounds i8, i8* %ivp.0336.in, i64 8
  %5 = bitcast i8* %arrayidx24.1 to i64*
  %6 = load i64, i64* %5, align 1, !tbaa !4
  %xor.1 = xor i64 %6, %4
  %arrayidx26.1 = getelementptr inbounds i8, i8* %out.addr.0333, i64 8
  %7 = bitcast i8* %arrayidx26.1 to i64*
  store i64 %xor.1, i64* %7, align 1, !tbaa !4
  tail call void @AES_encrypt(i8* noundef nonnull %out.addr.0333, i8* noundef nonnull %out.addr.0333, %struct.aes_key_st* noundef nonnull %key) #7
  %arrayidx34 = bitcast i8* %iv2p.0335.in to i64*
  %8 = load i64, i64* %arrayidx34, align 1, !tbaa !4
  %9 = load i64, i64* %arrayidx26, align 1, !tbaa !4
  %xor37 = xor i64 %9, %8
  store i64 %xor37, i64* %arrayidx26, align 1, !tbaa !4
  %arrayidx34.1 = getelementptr inbounds i8, i8* %iv2p.0335.in, i64 8
  %10 = bitcast i8* %arrayidx34.1 to i64*
  %11 = load i64, i64* %10, align 1, !tbaa !4
  %12 = load i64, i64* %7, align 1, !tbaa !4
  %xor37.1 = xor i64 %12, %11
  store i64 %xor37.1, i64* %7, align 1, !tbaa !4
  %dec = add nsw i64 %len.0332, -1
  %add.ptr41 = getelementptr inbounds i8, i8* %in.addr.0334, i64 16
  %add.ptr42 = getelementptr inbounds i8, i8* %out.addr.0333, i64 16
  %tobool21.not = icmp eq i64 %dec, 0
  br i1 %tobool21.not, label %while.end, label %for.cond.preheader, !llvm.loop !8

while.end:                                        ; preds = %for.cond.preheader, %if.then20
  %ivp.0.in.lcssa = phi i8* [ %ivec, %if.then20 ], [ %out.addr.0333, %for.cond.preheader ]
  %iv2p.0.in.lcssa = phi i8* [ %add.ptr, %if.then20 ], [ %in.addr.0334, %for.cond.preheader ]
  %call = tail call i8* @memcpy(i8* noundef nonnull %ivec, i8* noundef nonnull %ivp.0.in.lcssa, i64 noundef 16) #7
  %call48 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %iv2p.0.in.lcssa, i64 noundef 16) #7
  br label %cleanup

if.else:                                          ; preds = %if.then18
  %13 = bitcast <2 x i64>* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #8
  %14 = bitcast <2 x i64>* %iv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #8
  %15 = bitcast <2 x i64>* %iv2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %14, i8* noundef nonnull align 1 dereferenceable(16) %ivec, i64 16, i1 false), !tbaa.struct !10
  %add.ptr49 = getelementptr inbounds i8, i8* %ivec, i64 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %15, i8* noundef nonnull align 1 dereferenceable(16) %add.ptr49, i64 16, i1 false), !tbaa.struct !10
  %tobool51.not341 = icmp ult i64 %length, 16
  br i1 %tobool51.not341, label %while.end84, label %while.body52.preheader

while.body52.preheader:                           ; preds = %if.else
  %16 = load <2 x i64>, <2 x i64>* %iv2, align 16, !tbaa !4
  br label %while.body52

while.body52:                                     ; preds = %while.body52.preheader, %while.body52
  %in.addr.1344 = phi i8* [ %add.ptr82, %while.body52 ], [ %in, %while.body52.preheader ]
  %out.addr.1343 = phi i8* [ %add.ptr83, %while.body52 ], [ %in, %while.body52.preheader ]
  %len.1342 = phi i64 [ %dec81, %while.body52 ], [ %div, %while.body52.preheader ]
  %17 = phi <2 x i64> [ %19, %while.body52 ], [ %16, %while.body52.preheader ]
  %18 = bitcast i8* %in.addr.1344 to <2 x i64>*
  %19 = load <2 x i64>, <2 x i64>* %18, align 1
  %20 = load <2 x i64>, <2 x i64>* %iv, align 16, !tbaa !4
  %21 = xor <2 x i64> %20, %19
  store <2 x i64> %21, <2 x i64>* %tmp2, align 16, !tbaa !4
  call void @AES_encrypt(i8* noundef nonnull %13, i8* noundef nonnull %13, %struct.aes_key_st* noundef nonnull %key) #7
  %22 = load <2 x i64>, <2 x i64>* %tmp2, align 16, !tbaa !4
  %23 = xor <2 x i64> %22, %17
  store <2 x i64> %23, <2 x i64>* %tmp2, align 16, !tbaa !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %out.addr.1343, i8* noundef nonnull align 16 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %14, i8* noundef nonnull align 16 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !10
  store <2 x i64> %19, <2 x i64>* %iv2, align 16
  %dec81 = add nsw i64 %len.1342, -1
  %add.ptr82 = getelementptr inbounds i8, i8* %in.addr.1344, i64 16
  %add.ptr83 = getelementptr inbounds i8, i8* %out.addr.1343, i64 16
  %tobool51.not = icmp eq i64 %dec81, 0
  br i1 %tobool51.not, label %while.end84, label %while.body52, !llvm.loop !12

while.end84:                                      ; preds = %while.body52, %if.else
  %call87 = call i8* @memcpy(i8* noundef nonnull %ivec, i8* noundef nonnull %14, i64 noundef 16) #7
  %call91 = call i8* @memcpy(i8* noundef nonnull %add.ptr49, i8* noundef nonnull %15, i64 noundef 16) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #8
  br label %cleanup

if.else93:                                        ; preds = %cond.end15
  br i1 %cmp19.not, label %if.else144, label %if.then95

if.then95:                                        ; preds = %if.else93
  %add.ptr98 = getelementptr inbounds i8, i8* %ivec, i64 16
  %tobool100.not314 = icmp ult i64 %length, 16
  br i1 %tobool100.not314, label %while.end136, label %while.body101.lr.ph

while.body101.lr.ph:                              ; preds = %if.then95
  %24 = bitcast <2 x i64>* %tmp102 to i8*
  br label %while.body101

while.body101:                                    ; preds = %while.body101.lr.ph, %while.body101
  %iv2p97.0319.in = phi i8* [ %add.ptr98, %while.body101.lr.ph ], [ %out.addr.2316, %while.body101 ]
  %ivp96.0318.in = phi i8* [ %ivec, %while.body101.lr.ph ], [ %in.addr.2317, %while.body101 ]
  %in.addr.2317 = phi i8* [ %in, %while.body101.lr.ph ], [ %add.ptr134, %while.body101 ]
  %out.addr.2316 = phi i8* [ %out, %while.body101.lr.ph ], [ %add.ptr135, %while.body101 ]
  %len.2315 = phi i64 [ %div, %while.body101.lr.ph ], [ %dec133, %while.body101 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #8
  %25 = bitcast i8* %in.addr.2317 to <2 x i64>*
  %26 = load <2 x i64>, <2 x i64>* %25, align 1, !tbaa !4
  %27 = bitcast i8* %iv2p97.0319.in to <2 x i64>*
  %28 = load <2 x i64>, <2 x i64>* %27, align 1, !tbaa !4
  %29 = xor <2 x i64> %28, %26
  store <2 x i64> %29, <2 x i64>* %tmp102, align 16, !tbaa !4
  call void @AES_decrypt(i8* noundef nonnull %24, i8* noundef nonnull %out.addr.2316, %struct.aes_key_st* noundef nonnull %key) #7
  %arrayidx126 = bitcast i8* %ivp96.0318.in to i64*
  %30 = load i64, i64* %arrayidx126, align 1, !tbaa !4
  %arrayidx128 = bitcast i8* %out.addr.2316 to i64*
  %31 = load i64, i64* %arrayidx128, align 1, !tbaa !4
  %xor129 = xor i64 %31, %30
  store i64 %xor129, i64* %arrayidx128, align 1, !tbaa !4
  %arrayidx126.1 = getelementptr inbounds i8, i8* %ivp96.0318.in, i64 8
  %32 = bitcast i8* %arrayidx126.1 to i64*
  %33 = load i64, i64* %32, align 1, !tbaa !4
  %arrayidx128.1 = getelementptr inbounds i8, i8* %out.addr.2316, i64 8
  %34 = bitcast i8* %arrayidx128.1 to i64*
  %35 = load i64, i64* %34, align 1, !tbaa !4
  %xor129.1 = xor i64 %35, %33
  store i64 %xor129.1, i64* %34, align 1, !tbaa !4
  %dec133 = add nsw i64 %len.2315, -1
  %add.ptr134 = getelementptr inbounds i8, i8* %in.addr.2317, i64 16
  %add.ptr135 = getelementptr inbounds i8, i8* %out.addr.2316, i64 16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #8
  %tobool100.not = icmp eq i64 %dec133, 0
  br i1 %tobool100.not, label %while.end136, label %while.body101, !llvm.loop !13

while.end136:                                     ; preds = %while.body101, %if.then95
  %ivp96.0.in.lcssa = phi i8* [ %ivec, %if.then95 ], [ %in.addr.2317, %while.body101 ]
  %iv2p97.0.in.lcssa = phi i8* [ %add.ptr98, %if.then95 ], [ %out.addr.2316, %while.body101 ]
  %call139 = call i8* @memcpy(i8* noundef nonnull %ivec, i8* noundef nonnull %ivp96.0.in.lcssa, i64 noundef 16) #7
  %call143 = call i8* @memcpy(i8* noundef nonnull %add.ptr98, i8* noundef nonnull %iv2p97.0.in.lcssa, i64 noundef 16) #7
  br label %cleanup

if.else144:                                       ; preds = %if.else93
  %36 = bitcast <2 x i64>* %tmp145 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %36) #8
  %tmp2146.sroa.0.0.sroa_cast200 = bitcast [2 x i64]* %tmp2146.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %tmp2146.sroa.0.0.sroa_cast200)
  %37 = bitcast <2 x i64>* %iv147 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #8
  %38 = bitcast <2 x i64>* %iv2148 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %37, i8* noundef nonnull align 1 dereferenceable(16) %ivec, i64 16, i1 false), !tbaa.struct !10
  %add.ptr149 = getelementptr inbounds i8, i8* %ivec, i64 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %38, i8* noundef nonnull align 1 dereferenceable(16) %add.ptr149, i64 16, i1 false), !tbaa.struct !10
  %tobool151.not323 = icmp ult i64 %length, 16
  br i1 %tobool151.not323, label %while.end182, label %while.body152

while.body152:                                    ; preds = %if.else144, %while.body152
  %in.addr.3326 = phi i8* [ %add.ptr180, %while.body152 ], [ %in, %if.else144 ]
  %out.addr.3325 = phi i8* [ %add.ptr181, %while.body152 ], [ %in, %if.else144 ]
  %len.3324 = phi i64 [ %dec179, %while.body152 ], [ %div, %if.else144 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %36, i8* noundef nonnull align 1 dereferenceable(16) %in.addr.3326, i64 16, i1 false), !tbaa.struct !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %tmp2146.sroa.0.0.sroa_cast200, i8* noundef nonnull align 1 dereferenceable(16) %in.addr.3326, i64 16, i1 false)
  %39 = load <2 x i64>, <2 x i64>* %iv2148, align 16, !tbaa !4
  %40 = load <2 x i64>, <2 x i64>* %tmp145, align 16, !tbaa !4
  %41 = xor <2 x i64> %40, %39
  store <2 x i64> %41, <2 x i64>* %tmp145, align 16, !tbaa !4
  call void @AES_decrypt(i8* noundef nonnull %36, i8* noundef nonnull %36, %struct.aes_key_st* noundef nonnull %key) #7
  %42 = load <2 x i64>, <2 x i64>* %iv147, align 16, !tbaa !4
  %43 = load <2 x i64>, <2 x i64>* %tmp145, align 16, !tbaa !4
  %44 = xor <2 x i64> %43, %42
  store <2 x i64> %44, <2 x i64>* %tmp145, align 16, !tbaa !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %out.addr.3325, i8* noundef nonnull align 16 dereferenceable(16) %36, i64 16, i1 false), !tbaa.struct !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %37, i8* noundef nonnull align 8 dereferenceable(16) %tmp2146.sroa.0.0.sroa_cast200, i64 16, i1 false), !tbaa.struct !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %38, i8* noundef nonnull align 16 dereferenceable(16) %36, i64 16, i1 false), !tbaa.struct !10
  %dec179 = add nsw i64 %len.3324, -1
  %add.ptr180 = getelementptr inbounds i8, i8* %in.addr.3326, i64 16
  %add.ptr181 = getelementptr inbounds i8, i8* %out.addr.3325, i64 16
  %tobool151.not = icmp eq i64 %dec179, 0
  br i1 %tobool151.not, label %while.end182, label %while.body152, !llvm.loop !14

while.end182:                                     ; preds = %while.body152, %if.else144
  %call185 = call i8* @memcpy(i8* noundef nonnull %ivec, i8* noundef nonnull %37, i64 noundef 16) #7
  %call189 = call i8* @memcpy(i8* noundef nonnull %add.ptr149, i8* noundef nonnull %38, i64 noundef 16) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %tmp2146.sroa.0.0.sroa_cast200)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %36) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end84, %while.end, %while.end182, %while.end136, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @AES_encrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare void @AES_decrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @AES_bi_ige_encrypt(i8* noundef %in, i8* noundef %out, i64 noundef %length, %struct.aes_key_st* noundef %key, %struct.aes_key_st* nocapture noundef readnone %key2, i8* noundef readonly %ivec, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %tmp = alloca <16 x i8>, align 16
  %tmp2 = alloca [16 x i8], align 16
  %tmp3 = alloca [16 x i8], align 16
  %prev = alloca [16 x i8], align 16
  %0 = getelementptr inbounds <16 x i8>, <16 x i8>* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %prev, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8
  %tobool = icmp ne i8* %in, null
  %tobool1 = icmp ne i8* %out, null
  %or.cond = and i1 %tobool, %tobool1
  %tobool3 = icmp ne %struct.aes_key_st* %key, null
  %or.cond171 = and i1 %or.cond, %tobool3
  %tobool5 = icmp ne i8* %ivec, null
  %or.cond172 = and i1 %or.cond171, %tobool5
  br i1 %or.cond172, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 200) #6
  unreachable

cond.end:                                         ; preds = %entry
  %cmp = icmp eq i32 %enc, 1
  %4 = icmp ult i32 %enc, 2
  br i1 %4, label %cond.end9, label %cond.false8

cond.false8:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 201) #6
  unreachable

cond.end9:                                        ; preds = %cond.end
  %rem = and i64 %length, 15
  %cmp11 = icmp eq i64 %rem, 0
  br i1 %cmp11, label %cond.end14, label %cond.false13

cond.false13:                                     ; preds = %cond.end9
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 202) #6
  unreachable

cond.end14:                                       ; preds = %cond.end9
  %cmp17300 = icmp ugt i64 %length, 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end14
  br i1 %cmp17300, label %for.cond.preheader.preheader, label %if.end

for.cond.preheader.preheader:                     ; preds = %if.then
  %add.ptr = getelementptr inbounds i8, i8* %ivec, i64 16
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.preheader, %for.cond.preheader
  %iv2.0305 = phi i8* [ %3, %for.cond.preheader ], [ %add.ptr, %for.cond.preheader.preheader ]
  %iv.0304 = phi i8* [ %out.addr.0301, %for.cond.preheader ], [ %ivec, %for.cond.preheader.preheader ]
  %len.0303 = phi i64 [ %sub, %for.cond.preheader ], [ %length, %for.cond.preheader.preheader ]
  %in.addr.0302 = phi i8* [ %add.ptr37, %for.cond.preheader ], [ %in, %for.cond.preheader.preheader ]
  %out.addr.0301 = phi i8* [ %add.ptr38, %for.cond.preheader ], [ %out, %for.cond.preheader.preheader ]
  %5 = load i8, i8* %in.addr.0302, align 1, !tbaa !11
  %6 = load i8, i8* %iv.0304, align 1, !tbaa !11
  %xor281 = xor i8 %6, %5
  store i8 %xor281, i8* %out.addr.0301, align 1, !tbaa !11
  %arrayidx.1 = getelementptr inbounds i8, i8* %in.addr.0302, i64 1
  %7 = load i8, i8* %arrayidx.1, align 1, !tbaa !11
  %arrayidx19.1 = getelementptr inbounds i8, i8* %iv.0304, i64 1
  %8 = load i8, i8* %arrayidx19.1, align 1, !tbaa !11
  %xor281.1 = xor i8 %8, %7
  %arrayidx22.1 = getelementptr inbounds i8, i8* %out.addr.0301, i64 1
  store i8 %xor281.1, i8* %arrayidx22.1, align 1, !tbaa !11
  %arrayidx.2 = getelementptr inbounds i8, i8* %in.addr.0302, i64 2
  %9 = load i8, i8* %arrayidx.2, align 1, !tbaa !11
  %arrayidx19.2 = getelementptr inbounds i8, i8* %iv.0304, i64 2
  %10 = load i8, i8* %arrayidx19.2, align 1, !tbaa !11
  %xor281.2 = xor i8 %10, %9
  %arrayidx22.2 = getelementptr inbounds i8, i8* %out.addr.0301, i64 2
  store i8 %xor281.2, i8* %arrayidx22.2, align 1, !tbaa !11
  %arrayidx.3 = getelementptr inbounds i8, i8* %in.addr.0302, i64 3
  %11 = load i8, i8* %arrayidx.3, align 1, !tbaa !11
  %arrayidx19.3 = getelementptr inbounds i8, i8* %iv.0304, i64 3
  %12 = load i8, i8* %arrayidx19.3, align 1, !tbaa !11
  %xor281.3 = xor i8 %12, %11
  %arrayidx22.3 = getelementptr inbounds i8, i8* %out.addr.0301, i64 3
  store i8 %xor281.3, i8* %arrayidx22.3, align 1, !tbaa !11
  %arrayidx.4 = getelementptr inbounds i8, i8* %in.addr.0302, i64 4
  %13 = load i8, i8* %arrayidx.4, align 1, !tbaa !11
  %arrayidx19.4 = getelementptr inbounds i8, i8* %iv.0304, i64 4
  %14 = load i8, i8* %arrayidx19.4, align 1, !tbaa !11
  %xor281.4 = xor i8 %14, %13
  %arrayidx22.4 = getelementptr inbounds i8, i8* %out.addr.0301, i64 4
  store i8 %xor281.4, i8* %arrayidx22.4, align 1, !tbaa !11
  %arrayidx.5 = getelementptr inbounds i8, i8* %in.addr.0302, i64 5
  %15 = load i8, i8* %arrayidx.5, align 1, !tbaa !11
  %arrayidx19.5 = getelementptr inbounds i8, i8* %iv.0304, i64 5
  %16 = load i8, i8* %arrayidx19.5, align 1, !tbaa !11
  %xor281.5 = xor i8 %16, %15
  %arrayidx22.5 = getelementptr inbounds i8, i8* %out.addr.0301, i64 5
  store i8 %xor281.5, i8* %arrayidx22.5, align 1, !tbaa !11
  %arrayidx.6 = getelementptr inbounds i8, i8* %in.addr.0302, i64 6
  %17 = load i8, i8* %arrayidx.6, align 1, !tbaa !11
  %arrayidx19.6 = getelementptr inbounds i8, i8* %iv.0304, i64 6
  %18 = load i8, i8* %arrayidx19.6, align 1, !tbaa !11
  %xor281.6 = xor i8 %18, %17
  %arrayidx22.6 = getelementptr inbounds i8, i8* %out.addr.0301, i64 6
  store i8 %xor281.6, i8* %arrayidx22.6, align 1, !tbaa !11
  %arrayidx.7 = getelementptr inbounds i8, i8* %in.addr.0302, i64 7
  %19 = load i8, i8* %arrayidx.7, align 1, !tbaa !11
  %arrayidx19.7 = getelementptr inbounds i8, i8* %iv.0304, i64 7
  %20 = load i8, i8* %arrayidx19.7, align 1, !tbaa !11
  %xor281.7 = xor i8 %20, %19
  %arrayidx22.7 = getelementptr inbounds i8, i8* %out.addr.0301, i64 7
  store i8 %xor281.7, i8* %arrayidx22.7, align 1, !tbaa !11
  %arrayidx.8 = getelementptr inbounds i8, i8* %in.addr.0302, i64 8
  %21 = load i8, i8* %arrayidx.8, align 1, !tbaa !11
  %arrayidx19.8 = getelementptr inbounds i8, i8* %iv.0304, i64 8
  %22 = load i8, i8* %arrayidx19.8, align 1, !tbaa !11
  %xor281.8 = xor i8 %22, %21
  %arrayidx22.8 = getelementptr inbounds i8, i8* %out.addr.0301, i64 8
  store i8 %xor281.8, i8* %arrayidx22.8, align 1, !tbaa !11
  %arrayidx.9 = getelementptr inbounds i8, i8* %in.addr.0302, i64 9
  %23 = load i8, i8* %arrayidx.9, align 1, !tbaa !11
  %arrayidx19.9 = getelementptr inbounds i8, i8* %iv.0304, i64 9
  %24 = load i8, i8* %arrayidx19.9, align 1, !tbaa !11
  %xor281.9 = xor i8 %24, %23
  %arrayidx22.9 = getelementptr inbounds i8, i8* %out.addr.0301, i64 9
  store i8 %xor281.9, i8* %arrayidx22.9, align 1, !tbaa !11
  %arrayidx.10 = getelementptr inbounds i8, i8* %in.addr.0302, i64 10
  %25 = load i8, i8* %arrayidx.10, align 1, !tbaa !11
  %arrayidx19.10 = getelementptr inbounds i8, i8* %iv.0304, i64 10
  %26 = load i8, i8* %arrayidx19.10, align 1, !tbaa !11
  %xor281.10 = xor i8 %26, %25
  %arrayidx22.10 = getelementptr inbounds i8, i8* %out.addr.0301, i64 10
  store i8 %xor281.10, i8* %arrayidx22.10, align 1, !tbaa !11
  %arrayidx.11 = getelementptr inbounds i8, i8* %in.addr.0302, i64 11
  %27 = load i8, i8* %arrayidx.11, align 1, !tbaa !11
  %arrayidx19.11 = getelementptr inbounds i8, i8* %iv.0304, i64 11
  %28 = load i8, i8* %arrayidx19.11, align 1, !tbaa !11
  %xor281.11 = xor i8 %28, %27
  %arrayidx22.11 = getelementptr inbounds i8, i8* %out.addr.0301, i64 11
  store i8 %xor281.11, i8* %arrayidx22.11, align 1, !tbaa !11
  %arrayidx.12 = getelementptr inbounds i8, i8* %in.addr.0302, i64 12
  %29 = load i8, i8* %arrayidx.12, align 1, !tbaa !11
  %arrayidx19.12 = getelementptr inbounds i8, i8* %iv.0304, i64 12
  %30 = load i8, i8* %arrayidx19.12, align 1, !tbaa !11
  %xor281.12 = xor i8 %30, %29
  %arrayidx22.12 = getelementptr inbounds i8, i8* %out.addr.0301, i64 12
  store i8 %xor281.12, i8* %arrayidx22.12, align 1, !tbaa !11
  %arrayidx.13 = getelementptr inbounds i8, i8* %in.addr.0302, i64 13
  %31 = load i8, i8* %arrayidx.13, align 1, !tbaa !11
  %arrayidx19.13 = getelementptr inbounds i8, i8* %iv.0304, i64 13
  %32 = load i8, i8* %arrayidx19.13, align 1, !tbaa !11
  %xor281.13 = xor i8 %32, %31
  %arrayidx22.13 = getelementptr inbounds i8, i8* %out.addr.0301, i64 13
  store i8 %xor281.13, i8* %arrayidx22.13, align 1, !tbaa !11
  %arrayidx.14 = getelementptr inbounds i8, i8* %in.addr.0302, i64 14
  %33 = load i8, i8* %arrayidx.14, align 1, !tbaa !11
  %arrayidx19.14 = getelementptr inbounds i8, i8* %iv.0304, i64 14
  %34 = load i8, i8* %arrayidx19.14, align 1, !tbaa !11
  %xor281.14 = xor i8 %34, %33
  %arrayidx22.14 = getelementptr inbounds i8, i8* %out.addr.0301, i64 14
  store i8 %xor281.14, i8* %arrayidx22.14, align 1, !tbaa !11
  %arrayidx.15 = getelementptr inbounds i8, i8* %in.addr.0302, i64 15
  %35 = load i8, i8* %arrayidx.15, align 1, !tbaa !11
  %arrayidx19.15 = getelementptr inbounds i8, i8* %iv.0304, i64 15
  %36 = load i8, i8* %arrayidx19.15, align 1, !tbaa !11
  %xor281.15 = xor i8 %36, %35
  %arrayidx22.15 = getelementptr inbounds i8, i8* %out.addr.0301, i64 15
  store i8 %xor281.15, i8* %arrayidx22.15, align 1, !tbaa !11
  call void @AES_encrypt(i8* noundef nonnull %out.addr.0301, i8* noundef nonnull %out.addr.0301, %struct.aes_key_st* noundef nonnull %key) #7
  %37 = load i8, i8* %iv2.0305, align 1, !tbaa !11
  %38 = load i8, i8* %out.addr.0301, align 1, !tbaa !11
  %xor31280 = xor i8 %38, %37
  store i8 %xor31280, i8* %out.addr.0301, align 1, !tbaa !11
  %arrayidx27.1 = getelementptr inbounds i8, i8* %iv2.0305, i64 1
  %39 = load i8, i8* %arrayidx27.1, align 1, !tbaa !11
  %40 = load i8, i8* %arrayidx22.1, align 1, !tbaa !11
  %xor31280.1 = xor i8 %40, %39
  store i8 %xor31280.1, i8* %arrayidx22.1, align 1, !tbaa !11
  %arrayidx27.2 = getelementptr inbounds i8, i8* %iv2.0305, i64 2
  %41 = load i8, i8* %arrayidx27.2, align 1, !tbaa !11
  %42 = load i8, i8* %arrayidx22.2, align 1, !tbaa !11
  %xor31280.2 = xor i8 %42, %41
  store i8 %xor31280.2, i8* %arrayidx22.2, align 1, !tbaa !11
  %arrayidx27.3 = getelementptr inbounds i8, i8* %iv2.0305, i64 3
  %43 = load i8, i8* %arrayidx27.3, align 1, !tbaa !11
  %44 = load i8, i8* %arrayidx22.3, align 1, !tbaa !11
  %xor31280.3 = xor i8 %44, %43
  store i8 %xor31280.3, i8* %arrayidx22.3, align 1, !tbaa !11
  %arrayidx27.4 = getelementptr inbounds i8, i8* %iv2.0305, i64 4
  %45 = load i8, i8* %arrayidx27.4, align 1, !tbaa !11
  %46 = load i8, i8* %arrayidx22.4, align 1, !tbaa !11
  %xor31280.4 = xor i8 %46, %45
  store i8 %xor31280.4, i8* %arrayidx22.4, align 1, !tbaa !11
  %arrayidx27.5 = getelementptr inbounds i8, i8* %iv2.0305, i64 5
  %47 = load i8, i8* %arrayidx27.5, align 1, !tbaa !11
  %48 = load i8, i8* %arrayidx22.5, align 1, !tbaa !11
  %xor31280.5 = xor i8 %48, %47
  store i8 %xor31280.5, i8* %arrayidx22.5, align 1, !tbaa !11
  %arrayidx27.6 = getelementptr inbounds i8, i8* %iv2.0305, i64 6
  %49 = load i8, i8* %arrayidx27.6, align 1, !tbaa !11
  %50 = load i8, i8* %arrayidx22.6, align 1, !tbaa !11
  %xor31280.6 = xor i8 %50, %49
  store i8 %xor31280.6, i8* %arrayidx22.6, align 1, !tbaa !11
  %arrayidx27.7 = getelementptr inbounds i8, i8* %iv2.0305, i64 7
  %51 = load i8, i8* %arrayidx27.7, align 1, !tbaa !11
  %52 = load i8, i8* %arrayidx22.7, align 1, !tbaa !11
  %xor31280.7 = xor i8 %52, %51
  store i8 %xor31280.7, i8* %arrayidx22.7, align 1, !tbaa !11
  %arrayidx27.8 = getelementptr inbounds i8, i8* %iv2.0305, i64 8
  %53 = load i8, i8* %arrayidx27.8, align 1, !tbaa !11
  %54 = load i8, i8* %arrayidx22.8, align 1, !tbaa !11
  %xor31280.8 = xor i8 %54, %53
  store i8 %xor31280.8, i8* %arrayidx22.8, align 1, !tbaa !11
  %arrayidx27.9 = getelementptr inbounds i8, i8* %iv2.0305, i64 9
  %55 = load i8, i8* %arrayidx27.9, align 1, !tbaa !11
  %56 = load i8, i8* %arrayidx22.9, align 1, !tbaa !11
  %xor31280.9 = xor i8 %56, %55
  store i8 %xor31280.9, i8* %arrayidx22.9, align 1, !tbaa !11
  %arrayidx27.10 = getelementptr inbounds i8, i8* %iv2.0305, i64 10
  %57 = load i8, i8* %arrayidx27.10, align 1, !tbaa !11
  %58 = load i8, i8* %arrayidx22.10, align 1, !tbaa !11
  %xor31280.10 = xor i8 %58, %57
  store i8 %xor31280.10, i8* %arrayidx22.10, align 1, !tbaa !11
  %arrayidx27.11 = getelementptr inbounds i8, i8* %iv2.0305, i64 11
  %59 = load i8, i8* %arrayidx27.11, align 1, !tbaa !11
  %60 = load i8, i8* %arrayidx22.11, align 1, !tbaa !11
  %xor31280.11 = xor i8 %60, %59
  store i8 %xor31280.11, i8* %arrayidx22.11, align 1, !tbaa !11
  %arrayidx27.12 = getelementptr inbounds i8, i8* %iv2.0305, i64 12
  %61 = load i8, i8* %arrayidx27.12, align 1, !tbaa !11
  %62 = load i8, i8* %arrayidx22.12, align 1, !tbaa !11
  %xor31280.12 = xor i8 %62, %61
  store i8 %xor31280.12, i8* %arrayidx22.12, align 1, !tbaa !11
  %arrayidx27.13 = getelementptr inbounds i8, i8* %iv2.0305, i64 13
  %63 = load i8, i8* %arrayidx27.13, align 1, !tbaa !11
  %64 = load i8, i8* %arrayidx22.13, align 1, !tbaa !11
  %xor31280.13 = xor i8 %64, %63
  store i8 %xor31280.13, i8* %arrayidx22.13, align 1, !tbaa !11
  %arrayidx27.14 = getelementptr inbounds i8, i8* %iv2.0305, i64 14
  %65 = load i8, i8* %arrayidx27.14, align 1, !tbaa !11
  %66 = load i8, i8* %arrayidx22.14, align 1, !tbaa !11
  %xor31280.14 = xor i8 %66, %65
  store i8 %xor31280.14, i8* %arrayidx22.14, align 1, !tbaa !11
  %arrayidx27.15 = getelementptr inbounds i8, i8* %iv2.0305, i64 15
  %67 = load i8, i8* %arrayidx27.15, align 1, !tbaa !11
  %68 = load i8, i8* %arrayidx22.15, align 1, !tbaa !11
  %xor31280.15 = xor i8 %68, %67
  store i8 %xor31280.15, i8* %arrayidx22.15, align 1, !tbaa !11
  %call = call i8* @memcpy(i8* noundef nonnull %3, i8* noundef nonnull %in.addr.0302, i64 noundef 16) #7
  %sub = add i64 %len.0303, -16
  %add.ptr37 = getelementptr inbounds i8, i8* %in.addr.0302, i64 16
  %add.ptr38 = getelementptr inbounds i8, i8* %out.addr.0301, i64 16
  %cmp17 = icmp ugt i64 %sub, 15
  br i1 %cmp17, label %for.cond.preheader, label %while.end, !llvm.loop !15

while.end:                                        ; preds = %for.cond.preheader
  br i1 %cmp17300, label %while.body44.preheader, label %if.end

while.body44.preheader:                           ; preds = %while.end
  %add.ptr40 = getelementptr inbounds i8, i8* %ivec, i64 48
  %add.ptr39 = getelementptr inbounds i8, i8* %ivec, i64 32
  br label %while.body44

while.body44:                                     ; preds = %while.body44.preheader, %while.body44
  %iv2.1313 = phi i8* [ %3, %while.body44 ], [ %add.ptr40, %while.body44.preheader ]
  %iv.1312 = phi i8* [ %add.ptr45, %while.body44 ], [ %add.ptr39, %while.body44.preheader ]
  %len.1311 = phi i64 [ %sub78, %while.body44 ], [ %length, %while.body44.preheader ]
  %out.addr.1310 = phi i8* [ %add.ptr45, %while.body44 ], [ %add.ptr38, %while.body44.preheader ]
  %add.ptr45 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -16
  %call47 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr45, i64 noundef 16) #7
  %69 = load i8, i8* %iv.1312, align 1, !tbaa !11
  %70 = load i8, i8* %add.ptr45, align 1, !tbaa !11
  %xor56279 = xor i8 %70, %69
  store i8 %xor56279, i8* %add.ptr45, align 1, !tbaa !11
  %arrayidx52.1 = getelementptr inbounds i8, i8* %iv.1312, i64 1
  %71 = load i8, i8* %arrayidx52.1, align 1, !tbaa !11
  %arrayidx54.1 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -15
  %72 = load i8, i8* %arrayidx54.1, align 1, !tbaa !11
  %xor56279.1 = xor i8 %72, %71
  store i8 %xor56279.1, i8* %arrayidx54.1, align 1, !tbaa !11
  %arrayidx52.2 = getelementptr inbounds i8, i8* %iv.1312, i64 2
  %73 = load i8, i8* %arrayidx52.2, align 1, !tbaa !11
  %arrayidx54.2 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -14
  %74 = load i8, i8* %arrayidx54.2, align 1, !tbaa !11
  %xor56279.2 = xor i8 %74, %73
  store i8 %xor56279.2, i8* %arrayidx54.2, align 1, !tbaa !11
  %arrayidx52.3 = getelementptr inbounds i8, i8* %iv.1312, i64 3
  %75 = load i8, i8* %arrayidx52.3, align 1, !tbaa !11
  %arrayidx54.3 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -13
  %76 = load i8, i8* %arrayidx54.3, align 1, !tbaa !11
  %xor56279.3 = xor i8 %76, %75
  store i8 %xor56279.3, i8* %arrayidx54.3, align 1, !tbaa !11
  %arrayidx52.4 = getelementptr inbounds i8, i8* %iv.1312, i64 4
  %77 = load i8, i8* %arrayidx52.4, align 1, !tbaa !11
  %arrayidx54.4 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -12
  %78 = load i8, i8* %arrayidx54.4, align 1, !tbaa !11
  %xor56279.4 = xor i8 %78, %77
  store i8 %xor56279.4, i8* %arrayidx54.4, align 1, !tbaa !11
  %arrayidx52.5 = getelementptr inbounds i8, i8* %iv.1312, i64 5
  %79 = load i8, i8* %arrayidx52.5, align 1, !tbaa !11
  %arrayidx54.5 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -11
  %80 = load i8, i8* %arrayidx54.5, align 1, !tbaa !11
  %xor56279.5 = xor i8 %80, %79
  store i8 %xor56279.5, i8* %arrayidx54.5, align 1, !tbaa !11
  %arrayidx52.6 = getelementptr inbounds i8, i8* %iv.1312, i64 6
  %81 = load i8, i8* %arrayidx52.6, align 1, !tbaa !11
  %arrayidx54.6 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -10
  %82 = load i8, i8* %arrayidx54.6, align 1, !tbaa !11
  %xor56279.6 = xor i8 %82, %81
  store i8 %xor56279.6, i8* %arrayidx54.6, align 1, !tbaa !11
  %arrayidx52.7 = getelementptr inbounds i8, i8* %iv.1312, i64 7
  %83 = load i8, i8* %arrayidx52.7, align 1, !tbaa !11
  %arrayidx54.7 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -9
  %84 = load i8, i8* %arrayidx54.7, align 1, !tbaa !11
  %xor56279.7 = xor i8 %84, %83
  store i8 %xor56279.7, i8* %arrayidx54.7, align 1, !tbaa !11
  %arrayidx52.8 = getelementptr inbounds i8, i8* %iv.1312, i64 8
  %85 = load i8, i8* %arrayidx52.8, align 1, !tbaa !11
  %arrayidx54.8 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -8
  %86 = load i8, i8* %arrayidx54.8, align 1, !tbaa !11
  %xor56279.8 = xor i8 %86, %85
  store i8 %xor56279.8, i8* %arrayidx54.8, align 1, !tbaa !11
  %arrayidx52.9 = getelementptr inbounds i8, i8* %iv.1312, i64 9
  %87 = load i8, i8* %arrayidx52.9, align 1, !tbaa !11
  %arrayidx54.9 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -7
  %88 = load i8, i8* %arrayidx54.9, align 1, !tbaa !11
  %xor56279.9 = xor i8 %88, %87
  store i8 %xor56279.9, i8* %arrayidx54.9, align 1, !tbaa !11
  %arrayidx52.10 = getelementptr inbounds i8, i8* %iv.1312, i64 10
  %89 = load i8, i8* %arrayidx52.10, align 1, !tbaa !11
  %arrayidx54.10 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -6
  %90 = load i8, i8* %arrayidx54.10, align 1, !tbaa !11
  %xor56279.10 = xor i8 %90, %89
  store i8 %xor56279.10, i8* %arrayidx54.10, align 1, !tbaa !11
  %arrayidx52.11 = getelementptr inbounds i8, i8* %iv.1312, i64 11
  %91 = load i8, i8* %arrayidx52.11, align 1, !tbaa !11
  %arrayidx54.11 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -5
  %92 = load i8, i8* %arrayidx54.11, align 1, !tbaa !11
  %xor56279.11 = xor i8 %92, %91
  store i8 %xor56279.11, i8* %arrayidx54.11, align 1, !tbaa !11
  %arrayidx52.12 = getelementptr inbounds i8, i8* %iv.1312, i64 12
  %93 = load i8, i8* %arrayidx52.12, align 1, !tbaa !11
  %arrayidx54.12 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -4
  %94 = load i8, i8* %arrayidx54.12, align 1, !tbaa !11
  %xor56279.12 = xor i8 %94, %93
  store i8 %xor56279.12, i8* %arrayidx54.12, align 1, !tbaa !11
  %arrayidx52.13 = getelementptr inbounds i8, i8* %iv.1312, i64 13
  %95 = load i8, i8* %arrayidx52.13, align 1, !tbaa !11
  %arrayidx54.13 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -3
  %96 = load i8, i8* %arrayidx54.13, align 1, !tbaa !11
  %xor56279.13 = xor i8 %96, %95
  store i8 %xor56279.13, i8* %arrayidx54.13, align 1, !tbaa !11
  %arrayidx52.14 = getelementptr inbounds i8, i8* %iv.1312, i64 14
  %97 = load i8, i8* %arrayidx52.14, align 1, !tbaa !11
  %arrayidx54.14 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -2
  %98 = load i8, i8* %arrayidx54.14, align 1, !tbaa !11
  %xor56279.14 = xor i8 %98, %97
  store i8 %xor56279.14, i8* %arrayidx54.14, align 1, !tbaa !11
  %arrayidx52.15 = getelementptr inbounds i8, i8* %iv.1312, i64 15
  %99 = load i8, i8* %arrayidx52.15, align 1, !tbaa !11
  %arrayidx54.15 = getelementptr inbounds i8, i8* %out.addr.1310, i64 -1
  %100 = load i8, i8* %arrayidx54.15, align 1, !tbaa !11
  %xor56279.15 = xor i8 %100, %99
  store i8 %xor56279.15, i8* %arrayidx54.15, align 1, !tbaa !11
  call void @AES_encrypt(i8* noundef nonnull %add.ptr45, i8* noundef nonnull %add.ptr45, %struct.aes_key_st* noundef nonnull %key) #7
  %101 = load i8, i8* %iv2.1313, align 1, !tbaa !11
  %102 = load i8, i8* %add.ptr45, align 1, !tbaa !11
  %xor69278 = xor i8 %102, %101
  store i8 %xor69278, i8* %add.ptr45, align 1, !tbaa !11
  %arrayidx65.1 = getelementptr inbounds i8, i8* %iv2.1313, i64 1
  %103 = load i8, i8* %arrayidx65.1, align 1, !tbaa !11
  %104 = load i8, i8* %arrayidx54.1, align 1, !tbaa !11
  %xor69278.1 = xor i8 %104, %103
  store i8 %xor69278.1, i8* %arrayidx54.1, align 1, !tbaa !11
  %arrayidx65.2 = getelementptr inbounds i8, i8* %iv2.1313, i64 2
  %105 = load i8, i8* %arrayidx65.2, align 1, !tbaa !11
  %106 = load i8, i8* %arrayidx54.2, align 1, !tbaa !11
  %xor69278.2 = xor i8 %106, %105
  store i8 %xor69278.2, i8* %arrayidx54.2, align 1, !tbaa !11
  %arrayidx65.3 = getelementptr inbounds i8, i8* %iv2.1313, i64 3
  %107 = load i8, i8* %arrayidx65.3, align 1, !tbaa !11
  %108 = load i8, i8* %arrayidx54.3, align 1, !tbaa !11
  %xor69278.3 = xor i8 %108, %107
  store i8 %xor69278.3, i8* %arrayidx54.3, align 1, !tbaa !11
  %arrayidx65.4 = getelementptr inbounds i8, i8* %iv2.1313, i64 4
  %109 = load i8, i8* %arrayidx65.4, align 1, !tbaa !11
  %110 = load i8, i8* %arrayidx54.4, align 1, !tbaa !11
  %xor69278.4 = xor i8 %110, %109
  store i8 %xor69278.4, i8* %arrayidx54.4, align 1, !tbaa !11
  %arrayidx65.5 = getelementptr inbounds i8, i8* %iv2.1313, i64 5
  %111 = load i8, i8* %arrayidx65.5, align 1, !tbaa !11
  %112 = load i8, i8* %arrayidx54.5, align 1, !tbaa !11
  %xor69278.5 = xor i8 %112, %111
  store i8 %xor69278.5, i8* %arrayidx54.5, align 1, !tbaa !11
  %arrayidx65.6 = getelementptr inbounds i8, i8* %iv2.1313, i64 6
  %113 = load i8, i8* %arrayidx65.6, align 1, !tbaa !11
  %114 = load i8, i8* %arrayidx54.6, align 1, !tbaa !11
  %xor69278.6 = xor i8 %114, %113
  store i8 %xor69278.6, i8* %arrayidx54.6, align 1, !tbaa !11
  %arrayidx65.7 = getelementptr inbounds i8, i8* %iv2.1313, i64 7
  %115 = load i8, i8* %arrayidx65.7, align 1, !tbaa !11
  %116 = load i8, i8* %arrayidx54.7, align 1, !tbaa !11
  %xor69278.7 = xor i8 %116, %115
  store i8 %xor69278.7, i8* %arrayidx54.7, align 1, !tbaa !11
  %arrayidx65.8 = getelementptr inbounds i8, i8* %iv2.1313, i64 8
  %117 = load i8, i8* %arrayidx65.8, align 1, !tbaa !11
  %118 = load i8, i8* %arrayidx54.8, align 1, !tbaa !11
  %xor69278.8 = xor i8 %118, %117
  store i8 %xor69278.8, i8* %arrayidx54.8, align 1, !tbaa !11
  %arrayidx65.9 = getelementptr inbounds i8, i8* %iv2.1313, i64 9
  %119 = load i8, i8* %arrayidx65.9, align 1, !tbaa !11
  %120 = load i8, i8* %arrayidx54.9, align 1, !tbaa !11
  %xor69278.9 = xor i8 %120, %119
  store i8 %xor69278.9, i8* %arrayidx54.9, align 1, !tbaa !11
  %arrayidx65.10 = getelementptr inbounds i8, i8* %iv2.1313, i64 10
  %121 = load i8, i8* %arrayidx65.10, align 1, !tbaa !11
  %122 = load i8, i8* %arrayidx54.10, align 1, !tbaa !11
  %xor69278.10 = xor i8 %122, %121
  store i8 %xor69278.10, i8* %arrayidx54.10, align 1, !tbaa !11
  %arrayidx65.11 = getelementptr inbounds i8, i8* %iv2.1313, i64 11
  %123 = load i8, i8* %arrayidx65.11, align 1, !tbaa !11
  %124 = load i8, i8* %arrayidx54.11, align 1, !tbaa !11
  %xor69278.11 = xor i8 %124, %123
  store i8 %xor69278.11, i8* %arrayidx54.11, align 1, !tbaa !11
  %arrayidx65.12 = getelementptr inbounds i8, i8* %iv2.1313, i64 12
  %125 = load i8, i8* %arrayidx65.12, align 1, !tbaa !11
  %126 = load i8, i8* %arrayidx54.12, align 1, !tbaa !11
  %xor69278.12 = xor i8 %126, %125
  store i8 %xor69278.12, i8* %arrayidx54.12, align 1, !tbaa !11
  %arrayidx65.13 = getelementptr inbounds i8, i8* %iv2.1313, i64 13
  %127 = load i8, i8* %arrayidx65.13, align 1, !tbaa !11
  %128 = load i8, i8* %arrayidx54.13, align 1, !tbaa !11
  %xor69278.13 = xor i8 %128, %127
  store i8 %xor69278.13, i8* %arrayidx54.13, align 1, !tbaa !11
  %arrayidx65.14 = getelementptr inbounds i8, i8* %iv2.1313, i64 14
  %129 = load i8, i8* %arrayidx65.14, align 1, !tbaa !11
  %130 = load i8, i8* %arrayidx54.14, align 1, !tbaa !11
  %xor69278.14 = xor i8 %130, %129
  store i8 %xor69278.14, i8* %arrayidx54.14, align 1, !tbaa !11
  %arrayidx65.15 = getelementptr inbounds i8, i8* %iv2.1313, i64 15
  %131 = load i8, i8* %arrayidx65.15, align 1, !tbaa !11
  %132 = load i8, i8* %arrayidx54.15, align 1, !tbaa !11
  %xor69278.15 = xor i8 %132, %131
  store i8 %xor69278.15, i8* %arrayidx54.15, align 1, !tbaa !11
  %call76 = call i8* @memcpy(i8* noundef nonnull %3, i8* noundef nonnull %0, i64 noundef 16) #7
  %sub78 = add i64 %len.1311, -16
  %cmp42 = icmp ugt i64 %sub78, 15
  br i1 %cmp42, label %while.body44, label %if.end, !llvm.loop !16

if.else:                                          ; preds = %cond.end14
  br i1 %cmp17300, label %while.body87.preheader, label %if.end

while.body87.preheader:                           ; preds = %if.else
  %add.ptr83 = getelementptr inbounds i8, i8* %out, i64 %length
  %add.ptr82 = getelementptr inbounds i8, i8* %in, i64 %length
  %add.ptr81 = getelementptr inbounds i8, i8* %ivec, i64 48
  %add.ptr80 = getelementptr inbounds i8, i8* %ivec, i64 32
  br label %while.body87

while.body87:                                     ; preds = %while.body87.preheader, %while.body87
  %iv2.2290 = phi i8* [ %add.ptr89, %while.body87 ], [ %add.ptr81, %while.body87.preheader ]
  %iv.2289 = phi i8* [ %2, %while.body87 ], [ %add.ptr80, %while.body87.preheader ]
  %len.2288 = phi i64 [ %sub125, %while.body87 ], [ %length, %while.body87.preheader ]
  %in.addr.1287 = phi i8* [ %add.ptr88, %while.body87 ], [ %add.ptr82, %while.body87.preheader ]
  %out.addr.2286 = phi i8* [ %add.ptr89, %while.body87 ], [ %add.ptr83, %while.body87.preheader ]
  %add.ptr88 = getelementptr inbounds i8, i8* %in.addr.1287, i64 -16
  %call91 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr88, i64 noundef 16) #7
  %call93 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef nonnull %add.ptr88, i64 noundef 16) #7
  %133 = bitcast i8* %iv2.2290 to <16 x i8>*
  %134 = load <16 x i8>, <16 x i8>* %133, align 1, !tbaa !11
  %135 = load <16 x i8>, <16 x i8>* %tmp, align 16, !tbaa !11
  %136 = xor <16 x i8> %135, %134
  store <16 x i8> %136, <16 x i8>* %tmp, align 16, !tbaa !11
  %add.ptr89 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -16
  call void @AES_decrypt(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr89, %struct.aes_key_st* noundef nonnull %key) #7
  %137 = load i8, i8* %iv.2289, align 1, !tbaa !11
  %138 = load i8, i8* %add.ptr89, align 1, !tbaa !11
  %xor116276 = xor i8 %138, %137
  store i8 %xor116276, i8* %add.ptr89, align 1, !tbaa !11
  %arrayidx112.1 = getelementptr inbounds i8, i8* %iv.2289, i64 1
  %139 = load i8, i8* %arrayidx112.1, align 1, !tbaa !11
  %arrayidx114.1 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -15
  %140 = load i8, i8* %arrayidx114.1, align 1, !tbaa !11
  %xor116276.1 = xor i8 %140, %139
  store i8 %xor116276.1, i8* %arrayidx114.1, align 1, !tbaa !11
  %arrayidx112.2 = getelementptr inbounds i8, i8* %iv.2289, i64 2
  %141 = load i8, i8* %arrayidx112.2, align 1, !tbaa !11
  %arrayidx114.2 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -14
  %142 = load i8, i8* %arrayidx114.2, align 1, !tbaa !11
  %xor116276.2 = xor i8 %142, %141
  store i8 %xor116276.2, i8* %arrayidx114.2, align 1, !tbaa !11
  %arrayidx112.3 = getelementptr inbounds i8, i8* %iv.2289, i64 3
  %143 = load i8, i8* %arrayidx112.3, align 1, !tbaa !11
  %arrayidx114.3 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -13
  %144 = load i8, i8* %arrayidx114.3, align 1, !tbaa !11
  %xor116276.3 = xor i8 %144, %143
  store i8 %xor116276.3, i8* %arrayidx114.3, align 1, !tbaa !11
  %arrayidx112.4 = getelementptr inbounds i8, i8* %iv.2289, i64 4
  %145 = load i8, i8* %arrayidx112.4, align 1, !tbaa !11
  %arrayidx114.4 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -12
  %146 = load i8, i8* %arrayidx114.4, align 1, !tbaa !11
  %xor116276.4 = xor i8 %146, %145
  store i8 %xor116276.4, i8* %arrayidx114.4, align 1, !tbaa !11
  %arrayidx112.5 = getelementptr inbounds i8, i8* %iv.2289, i64 5
  %147 = load i8, i8* %arrayidx112.5, align 1, !tbaa !11
  %arrayidx114.5 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -11
  %148 = load i8, i8* %arrayidx114.5, align 1, !tbaa !11
  %xor116276.5 = xor i8 %148, %147
  store i8 %xor116276.5, i8* %arrayidx114.5, align 1, !tbaa !11
  %arrayidx112.6 = getelementptr inbounds i8, i8* %iv.2289, i64 6
  %149 = load i8, i8* %arrayidx112.6, align 1, !tbaa !11
  %arrayidx114.6 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -10
  %150 = load i8, i8* %arrayidx114.6, align 1, !tbaa !11
  %xor116276.6 = xor i8 %150, %149
  store i8 %xor116276.6, i8* %arrayidx114.6, align 1, !tbaa !11
  %arrayidx112.7 = getelementptr inbounds i8, i8* %iv.2289, i64 7
  %151 = load i8, i8* %arrayidx112.7, align 1, !tbaa !11
  %arrayidx114.7 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -9
  %152 = load i8, i8* %arrayidx114.7, align 1, !tbaa !11
  %xor116276.7 = xor i8 %152, %151
  store i8 %xor116276.7, i8* %arrayidx114.7, align 1, !tbaa !11
  %arrayidx112.8 = getelementptr inbounds i8, i8* %iv.2289, i64 8
  %153 = load i8, i8* %arrayidx112.8, align 1, !tbaa !11
  %arrayidx114.8 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -8
  %154 = load i8, i8* %arrayidx114.8, align 1, !tbaa !11
  %xor116276.8 = xor i8 %154, %153
  store i8 %xor116276.8, i8* %arrayidx114.8, align 1, !tbaa !11
  %arrayidx112.9 = getelementptr inbounds i8, i8* %iv.2289, i64 9
  %155 = load i8, i8* %arrayidx112.9, align 1, !tbaa !11
  %arrayidx114.9 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -7
  %156 = load i8, i8* %arrayidx114.9, align 1, !tbaa !11
  %xor116276.9 = xor i8 %156, %155
  store i8 %xor116276.9, i8* %arrayidx114.9, align 1, !tbaa !11
  %arrayidx112.10 = getelementptr inbounds i8, i8* %iv.2289, i64 10
  %157 = load i8, i8* %arrayidx112.10, align 1, !tbaa !11
  %arrayidx114.10 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -6
  %158 = load i8, i8* %arrayidx114.10, align 1, !tbaa !11
  %xor116276.10 = xor i8 %158, %157
  store i8 %xor116276.10, i8* %arrayidx114.10, align 1, !tbaa !11
  %arrayidx112.11 = getelementptr inbounds i8, i8* %iv.2289, i64 11
  %159 = load i8, i8* %arrayidx112.11, align 1, !tbaa !11
  %arrayidx114.11 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -5
  %160 = load i8, i8* %arrayidx114.11, align 1, !tbaa !11
  %xor116276.11 = xor i8 %160, %159
  store i8 %xor116276.11, i8* %arrayidx114.11, align 1, !tbaa !11
  %arrayidx112.12 = getelementptr inbounds i8, i8* %iv.2289, i64 12
  %161 = load i8, i8* %arrayidx112.12, align 1, !tbaa !11
  %arrayidx114.12 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -4
  %162 = load i8, i8* %arrayidx114.12, align 1, !tbaa !11
  %xor116276.12 = xor i8 %162, %161
  store i8 %xor116276.12, i8* %arrayidx114.12, align 1, !tbaa !11
  %arrayidx112.13 = getelementptr inbounds i8, i8* %iv.2289, i64 13
  %163 = load i8, i8* %arrayidx112.13, align 1, !tbaa !11
  %arrayidx114.13 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -3
  %164 = load i8, i8* %arrayidx114.13, align 1, !tbaa !11
  %xor116276.13 = xor i8 %164, %163
  store i8 %xor116276.13, i8* %arrayidx114.13, align 1, !tbaa !11
  %arrayidx112.14 = getelementptr inbounds i8, i8* %iv.2289, i64 14
  %165 = load i8, i8* %arrayidx112.14, align 1, !tbaa !11
  %arrayidx114.14 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -2
  %166 = load i8, i8* %arrayidx114.14, align 1, !tbaa !11
  %xor116276.14 = xor i8 %166, %165
  store i8 %xor116276.14, i8* %arrayidx114.14, align 1, !tbaa !11
  %arrayidx112.15 = getelementptr inbounds i8, i8* %iv.2289, i64 15
  %167 = load i8, i8* %arrayidx112.15, align 1, !tbaa !11
  %arrayidx114.15 = getelementptr inbounds i8, i8* %out.addr.2286, i64 -1
  %168 = load i8, i8* %arrayidx114.15, align 1, !tbaa !11
  %xor116276.15 = xor i8 %168, %167
  store i8 %xor116276.15, i8* %arrayidx114.15, align 1, !tbaa !11
  %call123 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef nonnull %1, i64 noundef 16) #7
  %sub125 = add i64 %len.2288, -16
  %cmp85 = icmp ugt i64 %sub125, 15
  br i1 %cmp85, label %while.body87, label %while.end126, !llvm.loop !17

while.end126:                                     ; preds = %while.body87
  br i1 %cmp17300, label %while.body131.preheader, label %if.end

while.body131.preheader:                          ; preds = %while.end126
  %add.ptr127 = getelementptr inbounds i8, i8* %ivec, i64 16
  br label %while.body131

while.body131:                                    ; preds = %while.body131.preheader, %while.body131
  %iv2.3297 = phi i8* [ %out.addr.3294, %while.body131 ], [ %add.ptr127, %while.body131.preheader ]
  %iv.3296 = phi i8* [ %2, %while.body131 ], [ %ivec, %while.body131.preheader ]
  %len.3295 = phi i64 [ %sub167, %while.body131 ], [ %length, %while.body131.preheader ]
  %out.addr.3294 = phi i8* [ %add.ptr169, %while.body131 ], [ %add.ptr89, %while.body131.preheader ]
  %call133 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %out.addr.3294, i64 noundef 16) #7
  %call135 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef nonnull %out.addr.3294, i64 noundef 16) #7
  %169 = bitcast i8* %iv2.3297 to <16 x i8>*
  %170 = load <16 x i8>, <16 x i8>* %169, align 1, !tbaa !11
  %171 = load <16 x i8>, <16 x i8>* %tmp, align 16, !tbaa !11
  %172 = xor <16 x i8> %171, %170
  store <16 x i8> %172, <16 x i8>* %tmp, align 16, !tbaa !11
  call void @AES_decrypt(i8* noundef nonnull %0, i8* noundef nonnull %out.addr.3294, %struct.aes_key_st* noundef nonnull %key) #7
  %173 = load i8, i8* %iv.3296, align 1, !tbaa !11
  %174 = load i8, i8* %out.addr.3294, align 1, !tbaa !11
  %xor158274 = xor i8 %174, %173
  store i8 %xor158274, i8* %out.addr.3294, align 1, !tbaa !11
  %arrayidx154.1 = getelementptr inbounds i8, i8* %iv.3296, i64 1
  %175 = load i8, i8* %arrayidx154.1, align 1, !tbaa !11
  %arrayidx156.1 = getelementptr inbounds i8, i8* %out.addr.3294, i64 1
  %176 = load i8, i8* %arrayidx156.1, align 1, !tbaa !11
  %xor158274.1 = xor i8 %176, %175
  store i8 %xor158274.1, i8* %arrayidx156.1, align 1, !tbaa !11
  %arrayidx154.2 = getelementptr inbounds i8, i8* %iv.3296, i64 2
  %177 = load i8, i8* %arrayidx154.2, align 1, !tbaa !11
  %arrayidx156.2 = getelementptr inbounds i8, i8* %out.addr.3294, i64 2
  %178 = load i8, i8* %arrayidx156.2, align 1, !tbaa !11
  %xor158274.2 = xor i8 %178, %177
  store i8 %xor158274.2, i8* %arrayidx156.2, align 1, !tbaa !11
  %arrayidx154.3 = getelementptr inbounds i8, i8* %iv.3296, i64 3
  %179 = load i8, i8* %arrayidx154.3, align 1, !tbaa !11
  %arrayidx156.3 = getelementptr inbounds i8, i8* %out.addr.3294, i64 3
  %180 = load i8, i8* %arrayidx156.3, align 1, !tbaa !11
  %xor158274.3 = xor i8 %180, %179
  store i8 %xor158274.3, i8* %arrayidx156.3, align 1, !tbaa !11
  %arrayidx154.4 = getelementptr inbounds i8, i8* %iv.3296, i64 4
  %181 = load i8, i8* %arrayidx154.4, align 1, !tbaa !11
  %arrayidx156.4 = getelementptr inbounds i8, i8* %out.addr.3294, i64 4
  %182 = load i8, i8* %arrayidx156.4, align 1, !tbaa !11
  %xor158274.4 = xor i8 %182, %181
  store i8 %xor158274.4, i8* %arrayidx156.4, align 1, !tbaa !11
  %arrayidx154.5 = getelementptr inbounds i8, i8* %iv.3296, i64 5
  %183 = load i8, i8* %arrayidx154.5, align 1, !tbaa !11
  %arrayidx156.5 = getelementptr inbounds i8, i8* %out.addr.3294, i64 5
  %184 = load i8, i8* %arrayidx156.5, align 1, !tbaa !11
  %xor158274.5 = xor i8 %184, %183
  store i8 %xor158274.5, i8* %arrayidx156.5, align 1, !tbaa !11
  %arrayidx154.6 = getelementptr inbounds i8, i8* %iv.3296, i64 6
  %185 = load i8, i8* %arrayidx154.6, align 1, !tbaa !11
  %arrayidx156.6 = getelementptr inbounds i8, i8* %out.addr.3294, i64 6
  %186 = load i8, i8* %arrayidx156.6, align 1, !tbaa !11
  %xor158274.6 = xor i8 %186, %185
  store i8 %xor158274.6, i8* %arrayidx156.6, align 1, !tbaa !11
  %arrayidx154.7 = getelementptr inbounds i8, i8* %iv.3296, i64 7
  %187 = load i8, i8* %arrayidx154.7, align 1, !tbaa !11
  %arrayidx156.7 = getelementptr inbounds i8, i8* %out.addr.3294, i64 7
  %188 = load i8, i8* %arrayidx156.7, align 1, !tbaa !11
  %xor158274.7 = xor i8 %188, %187
  store i8 %xor158274.7, i8* %arrayidx156.7, align 1, !tbaa !11
  %arrayidx154.8 = getelementptr inbounds i8, i8* %iv.3296, i64 8
  %189 = load i8, i8* %arrayidx154.8, align 1, !tbaa !11
  %arrayidx156.8 = getelementptr inbounds i8, i8* %out.addr.3294, i64 8
  %190 = load i8, i8* %arrayidx156.8, align 1, !tbaa !11
  %xor158274.8 = xor i8 %190, %189
  store i8 %xor158274.8, i8* %arrayidx156.8, align 1, !tbaa !11
  %arrayidx154.9 = getelementptr inbounds i8, i8* %iv.3296, i64 9
  %191 = load i8, i8* %arrayidx154.9, align 1, !tbaa !11
  %arrayidx156.9 = getelementptr inbounds i8, i8* %out.addr.3294, i64 9
  %192 = load i8, i8* %arrayidx156.9, align 1, !tbaa !11
  %xor158274.9 = xor i8 %192, %191
  store i8 %xor158274.9, i8* %arrayidx156.9, align 1, !tbaa !11
  %arrayidx154.10 = getelementptr inbounds i8, i8* %iv.3296, i64 10
  %193 = load i8, i8* %arrayidx154.10, align 1, !tbaa !11
  %arrayidx156.10 = getelementptr inbounds i8, i8* %out.addr.3294, i64 10
  %194 = load i8, i8* %arrayidx156.10, align 1, !tbaa !11
  %xor158274.10 = xor i8 %194, %193
  store i8 %xor158274.10, i8* %arrayidx156.10, align 1, !tbaa !11
  %arrayidx154.11 = getelementptr inbounds i8, i8* %iv.3296, i64 11
  %195 = load i8, i8* %arrayidx154.11, align 1, !tbaa !11
  %arrayidx156.11 = getelementptr inbounds i8, i8* %out.addr.3294, i64 11
  %196 = load i8, i8* %arrayidx156.11, align 1, !tbaa !11
  %xor158274.11 = xor i8 %196, %195
  store i8 %xor158274.11, i8* %arrayidx156.11, align 1, !tbaa !11
  %arrayidx154.12 = getelementptr inbounds i8, i8* %iv.3296, i64 12
  %197 = load i8, i8* %arrayidx154.12, align 1, !tbaa !11
  %arrayidx156.12 = getelementptr inbounds i8, i8* %out.addr.3294, i64 12
  %198 = load i8, i8* %arrayidx156.12, align 1, !tbaa !11
  %xor158274.12 = xor i8 %198, %197
  store i8 %xor158274.12, i8* %arrayidx156.12, align 1, !tbaa !11
  %arrayidx154.13 = getelementptr inbounds i8, i8* %iv.3296, i64 13
  %199 = load i8, i8* %arrayidx154.13, align 1, !tbaa !11
  %arrayidx156.13 = getelementptr inbounds i8, i8* %out.addr.3294, i64 13
  %200 = load i8, i8* %arrayidx156.13, align 1, !tbaa !11
  %xor158274.13 = xor i8 %200, %199
  store i8 %xor158274.13, i8* %arrayidx156.13, align 1, !tbaa !11
  %arrayidx154.14 = getelementptr inbounds i8, i8* %iv.3296, i64 14
  %201 = load i8, i8* %arrayidx154.14, align 1, !tbaa !11
  %arrayidx156.14 = getelementptr inbounds i8, i8* %out.addr.3294, i64 14
  %202 = load i8, i8* %arrayidx156.14, align 1, !tbaa !11
  %xor158274.14 = xor i8 %202, %201
  store i8 %xor158274.14, i8* %arrayidx156.14, align 1, !tbaa !11
  %arrayidx154.15 = getelementptr inbounds i8, i8* %iv.3296, i64 15
  %203 = load i8, i8* %arrayidx154.15, align 1, !tbaa !11
  %arrayidx156.15 = getelementptr inbounds i8, i8* %out.addr.3294, i64 15
  %204 = load i8, i8* %arrayidx156.15, align 1, !tbaa !11
  %xor158274.15 = xor i8 %204, %203
  store i8 %xor158274.15, i8* %arrayidx156.15, align 1, !tbaa !11
  %call165 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef nonnull %1, i64 noundef 16) #7
  %sub167 = add i64 %len.3295, -16
  %add.ptr169 = getelementptr inbounds i8, i8* %out.addr.3294, i64 16
  %cmp129 = icmp ugt i64 %sub167, 15
  br i1 %cmp129, label %while.body131, label %if.end, !llvm.loop !18

if.end:                                           ; preds = %while.body131, %while.body44, %if.else, %if.then, %while.end126, %while.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{i64 0, i64 16, !11}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
