; ModuleID = 'lib/crypto/chacha.c'
source_filename = "lib/crypto/chacha.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @chacha_block_generic(i32* noundef %state, i8* nocapture noundef writeonly %stream, i32 noundef %nrounds) local_unnamed_addr #0 {
entry:
  %x = alloca [16 x i32], align 4
  %0 = bitcast [16 x i32]* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %1 = bitcast i32* %state to i8*
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 64) #8
  call fastcc void @chacha_permute(i32* noundef nonnull %arraydecay, i32 noundef %nrounds) #9
  %2 = load i32, i32* %arraydecay, align 4
  %3 = load i32, i32* %state, align 4
  %add = add i32 %3, %2
  call fastcc void @put_unaligned_le32(i32 noundef %add, i8* noundef %stream) #9
  %arrayidx.1 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1
  %4 = load i32, i32* %arrayidx.1, align 4
  %arrayidx4.1 = getelementptr i32, i32* %state, i64 1
  %5 = load i32, i32* %arrayidx4.1, align 4
  %add.1 = add i32 %5, %4
  %arrayidx6.1 = getelementptr i8, i8* %stream, i64 4
  call fastcc void @put_unaligned_le32(i32 noundef %add.1, i8* noundef %arrayidx6.1) #9
  %arrayidx.2 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2
  %6 = load i32, i32* %arrayidx.2, align 4
  %arrayidx4.2 = getelementptr i32, i32* %state, i64 2
  %7 = load i32, i32* %arrayidx4.2, align 4
  %add.2 = add i32 %7, %6
  %arrayidx6.2 = getelementptr i8, i8* %stream, i64 8
  call fastcc void @put_unaligned_le32(i32 noundef %add.2, i8* noundef %arrayidx6.2) #9
  %arrayidx.3 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3
  %8 = load i32, i32* %arrayidx.3, align 4
  %arrayidx4.3 = getelementptr i32, i32* %state, i64 3
  %9 = load i32, i32* %arrayidx4.3, align 4
  %add.3 = add i32 %9, %8
  %arrayidx6.3 = getelementptr i8, i8* %stream, i64 12
  call fastcc void @put_unaligned_le32(i32 noundef %add.3, i8* noundef %arrayidx6.3) #9
  %arrayidx.4 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4
  %10 = load i32, i32* %arrayidx.4, align 4
  %arrayidx4.4 = getelementptr i32, i32* %state, i64 4
  %11 = load i32, i32* %arrayidx4.4, align 4
  %add.4 = add i32 %11, %10
  %arrayidx6.4 = getelementptr i8, i8* %stream, i64 16
  call fastcc void @put_unaligned_le32(i32 noundef %add.4, i8* noundef %arrayidx6.4) #9
  %arrayidx.5 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5
  %12 = load i32, i32* %arrayidx.5, align 4
  %arrayidx4.5 = getelementptr i32, i32* %state, i64 5
  %13 = load i32, i32* %arrayidx4.5, align 4
  %add.5 = add i32 %13, %12
  %arrayidx6.5 = getelementptr i8, i8* %stream, i64 20
  call fastcc void @put_unaligned_le32(i32 noundef %add.5, i8* noundef %arrayidx6.5) #9
  %arrayidx.6 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6
  %14 = load i32, i32* %arrayidx.6, align 4
  %arrayidx4.6 = getelementptr i32, i32* %state, i64 6
  %15 = load i32, i32* %arrayidx4.6, align 4
  %add.6 = add i32 %15, %14
  %arrayidx6.6 = getelementptr i8, i8* %stream, i64 24
  call fastcc void @put_unaligned_le32(i32 noundef %add.6, i8* noundef %arrayidx6.6) #9
  %arrayidx.7 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7
  %16 = load i32, i32* %arrayidx.7, align 4
  %arrayidx4.7 = getelementptr i32, i32* %state, i64 7
  %17 = load i32, i32* %arrayidx4.7, align 4
  %add.7 = add i32 %17, %16
  %arrayidx6.7 = getelementptr i8, i8* %stream, i64 28
  call fastcc void @put_unaligned_le32(i32 noundef %add.7, i8* noundef %arrayidx6.7) #9
  %arrayidx.8 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8
  %18 = load i32, i32* %arrayidx.8, align 4
  %arrayidx4.8 = getelementptr i32, i32* %state, i64 8
  %19 = load i32, i32* %arrayidx4.8, align 4
  %add.8 = add i32 %19, %18
  %arrayidx6.8 = getelementptr i8, i8* %stream, i64 32
  call fastcc void @put_unaligned_le32(i32 noundef %add.8, i8* noundef %arrayidx6.8) #9
  %arrayidx.9 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9
  %20 = load i32, i32* %arrayidx.9, align 4
  %arrayidx4.9 = getelementptr i32, i32* %state, i64 9
  %21 = load i32, i32* %arrayidx4.9, align 4
  %add.9 = add i32 %21, %20
  %arrayidx6.9 = getelementptr i8, i8* %stream, i64 36
  call fastcc void @put_unaligned_le32(i32 noundef %add.9, i8* noundef %arrayidx6.9) #9
  %arrayidx.10 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10
  %22 = load i32, i32* %arrayidx.10, align 4
  %arrayidx4.10 = getelementptr i32, i32* %state, i64 10
  %23 = load i32, i32* %arrayidx4.10, align 4
  %add.10 = add i32 %23, %22
  %arrayidx6.10 = getelementptr i8, i8* %stream, i64 40
  call fastcc void @put_unaligned_le32(i32 noundef %add.10, i8* noundef %arrayidx6.10) #9
  %arrayidx.11 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11
  %24 = load i32, i32* %arrayidx.11, align 4
  %arrayidx4.11 = getelementptr i32, i32* %state, i64 11
  %25 = load i32, i32* %arrayidx4.11, align 4
  %add.11 = add i32 %25, %24
  %arrayidx6.11 = getelementptr i8, i8* %stream, i64 44
  call fastcc void @put_unaligned_le32(i32 noundef %add.11, i8* noundef %arrayidx6.11) #9
  %arrayidx.12 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %26 = load i32, i32* %arrayidx.12, align 4
  %arrayidx4.12 = getelementptr i32, i32* %state, i64 12
  %27 = load i32, i32* %arrayidx4.12, align 4
  %add.12 = add i32 %27, %26
  %arrayidx6.12 = getelementptr i8, i8* %stream, i64 48
  call fastcc void @put_unaligned_le32(i32 noundef %add.12, i8* noundef %arrayidx6.12) #9
  %arrayidx.13 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13
  %28 = load i32, i32* %arrayidx.13, align 4
  %arrayidx4.13 = getelementptr i32, i32* %state, i64 13
  %29 = load i32, i32* %arrayidx4.13, align 4
  %add.13 = add i32 %29, %28
  %arrayidx6.13 = getelementptr i8, i8* %stream, i64 52
  call fastcc void @put_unaligned_le32(i32 noundef %add.13, i8* noundef %arrayidx6.13) #9
  %arrayidx.14 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14
  %30 = load i32, i32* %arrayidx.14, align 4
  %arrayidx4.14 = getelementptr i32, i32* %state, i64 14
  %31 = load i32, i32* %arrayidx4.14, align 4
  %add.14 = add i32 %31, %30
  %arrayidx6.14 = getelementptr i8, i8* %stream, i64 56
  call fastcc void @put_unaligned_le32(i32 noundef %add.14, i8* noundef %arrayidx6.14) #9
  %arrayidx.15 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15
  %32 = load i32, i32* %arrayidx.15, align 4
  %arrayidx4.15 = getelementptr i32, i32* %state, i64 15
  %33 = load i32, i32* %arrayidx4.15, align 4
  %add.15 = add i32 %33, %32
  %arrayidx6.15 = getelementptr i8, i8* %stream, i64 60
  call fastcc void @put_unaligned_le32(i32 noundef %add.15, i8* noundef %arrayidx6.15) #9
  %34 = load i32, i32* %arrayidx4.12, align 4
  %inc8 = add i32 %34, 1
  store i32 %inc8, i32* %arrayidx4.12, align 4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @chacha_permute(i32* noundef %x, i32 noundef %nrounds) unnamed_addr #0 {
entry:
  switch i32 %nrounds, label %if.end [
    i32 20, label %for.body.lr.ph
    i32 12, label %for.body.lr.ph
  ]

if.end:                                           ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/crypto/chacha.c\22; .popsection; .long 14472b - 14470b; .short 21; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !8
  %cmp15435 = icmp sgt i32 %nrounds, 0
  br i1 %cmp15435, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry, %entry, %if.end
  %arrayidx = getelementptr i32, i32* %x, i64 4
  %arrayidx18 = getelementptr i32, i32* %x, i64 12
  %arrayidx21 = getelementptr i32, i32* %x, i64 5
  %arrayidx22 = getelementptr i32, i32* %x, i64 1
  %arrayidx24 = getelementptr i32, i32* %x, i64 13
  %arrayidx29 = getelementptr i32, i32* %x, i64 6
  %arrayidx30 = getelementptr i32, i32* %x, i64 2
  %arrayidx32 = getelementptr i32, i32* %x, i64 14
  %arrayidx37 = getelementptr i32, i32* %x, i64 7
  %arrayidx38 = getelementptr i32, i32* %x, i64 3
  %arrayidx40 = getelementptr i32, i32* %x, i64 15
  %arrayidx46 = getelementptr i32, i32* %x, i64 8
  %arrayidx54 = getelementptr i32, i32* %x, i64 9
  %arrayidx62 = getelementptr i32, i32* %x, i64 10
  %arrayidx70 = getelementptr i32, i32* %x, i64 11
  %arrayidx.promoted = load i32, i32* %arrayidx, align 4
  %x.promoted = load i32, i32* %x, align 4
  %arrayidx18.promoted = load i32, i32* %arrayidx18, align 4
  %arrayidx21.promoted = load i32, i32* %arrayidx21, align 4
  %arrayidx22.promoted = load i32, i32* %arrayidx22, align 4
  %arrayidx24.promoted = load i32, i32* %arrayidx24, align 4
  %arrayidx29.promoted = load i32, i32* %arrayidx29, align 4
  %arrayidx30.promoted = load i32, i32* %arrayidx30, align 4
  %arrayidx32.promoted = load i32, i32* %arrayidx32, align 4
  %arrayidx37.promoted = load i32, i32* %arrayidx37, align 4
  %arrayidx38.promoted = load i32, i32* %arrayidx38, align 4
  %arrayidx40.promoted = load i32, i32* %arrayidx40, align 4
  %arrayidx46.promoted = load i32, i32* %arrayidx46, align 4
  %arrayidx54.promoted = load i32, i32* %arrayidx54, align 4
  %arrayidx62.promoted = load i32, i32* %arrayidx62, align 4
  %arrayidx70.promoted = load i32, i32* %arrayidx70, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %add247452 = phi i32 [ %arrayidx70.promoted, %for.body.lr.ph ], [ %add247, %for.body ]
  %add239451 = phi i32 [ %arrayidx62.promoted, %for.body.lr.ph ], [ %add239, %for.body ]
  %add263450 = phi i32 [ %arrayidx54.promoted, %for.body.lr.ph ], [ %add263, %for.body ]
  %add255449 = phi i32 [ %arrayidx46.promoted, %for.body.lr.ph ], [ %add255, %for.body ]
  %call211448 = phi i32 [ %arrayidx40.promoted, %for.body.lr.ph ], [ %call211, %for.body ]
  %add231447 = phi i32 [ %arrayidx38.promoted, %for.body.lr.ph ], [ %add231, %for.body ]
  %call259446 = phi i32 [ %arrayidx37.promoted, %for.body.lr.ph ], [ %call259, %for.body ]
  %call235445 = phi i32 [ %arrayidx32.promoted, %for.body.lr.ph ], [ %call235, %for.body ]
  %add223444 = phi i32 [ %arrayidx30.promoted, %for.body.lr.ph ], [ %add223, %for.body ]
  %call251443 = phi i32 [ %arrayidx29.promoted, %for.body.lr.ph ], [ %call251, %for.body ]
  %call227442 = phi i32 [ %arrayidx24.promoted, %for.body.lr.ph ], [ %call227, %for.body ]
  %add215441 = phi i32 [ %arrayidx22.promoted, %for.body.lr.ph ], [ %add215, %for.body ]
  %call243440 = phi i32 [ %arrayidx21.promoted, %for.body.lr.ph ], [ %call243, %for.body ]
  %call219439 = phi i32 [ %arrayidx18.promoted, %for.body.lr.ph ], [ %call219, %for.body ]
  %add207438 = phi i32 [ %x.promoted, %for.body.lr.ph ], [ %add207, %for.body ]
  %call267437 = phi i32 [ %arrayidx.promoted, %for.body.lr.ph ], [ %call267, %for.body ]
  %i.0436 = phi i32 [ 0, %for.body.lr.ph ], [ %add269, %for.body ]
  %add = add i32 %add207438, %call267437
  %xor = xor i32 %call219439, %add
  %call = call fastcc i32 @rol32(i32 noundef %xor, i32 noundef 16) #9
  %add23 = add i32 %add215441, %call243440
  %xor26 = xor i32 %call227442, %add23
  %call27 = call fastcc i32 @rol32(i32 noundef %xor26, i32 noundef 16) #9
  %add31 = add i32 %add223444, %call251443
  %xor34 = xor i32 %call235445, %add31
  %call35 = call fastcc i32 @rol32(i32 noundef %xor34, i32 noundef 16) #9
  %add39 = add i32 %add231447, %call259446
  %xor42 = xor i32 %call211448, %add39
  %call43 = call fastcc i32 @rol32(i32 noundef %xor42, i32 noundef 16) #9
  %add47 = add i32 %add255449, %call
  %xor50 = xor i32 %add47, %call267437
  %call51 = call fastcc i32 @rol32(i32 noundef %xor50, i32 noundef 12) #9
  %add55 = add i32 %add263450, %call27
  %xor58 = xor i32 %add55, %call243440
  %call59 = call fastcc i32 @rol32(i32 noundef %xor58, i32 noundef 12) #9
  %add63 = add i32 %add239451, %call35
  %xor66 = xor i32 %add63, %call251443
  %call67 = call fastcc i32 @rol32(i32 noundef %xor66, i32 noundef 12) #9
  %add71 = add i32 %add247452, %call43
  %xor74 = xor i32 %add71, %call259446
  %call75 = call fastcc i32 @rol32(i32 noundef %xor74, i32 noundef 12) #9
  %add79 = add i32 %call51, %add
  %xor82 = xor i32 %add79, %call
  %call83 = call fastcc i32 @rol32(i32 noundef %xor82, i32 noundef 8) #9
  %add87 = add i32 %call59, %add23
  %xor90 = xor i32 %add87, %call27
  %call91 = call fastcc i32 @rol32(i32 noundef %xor90, i32 noundef 8) #9
  %add95 = add i32 %call67, %add31
  %xor98 = xor i32 %add95, %call35
  %call99 = call fastcc i32 @rol32(i32 noundef %xor98, i32 noundef 8) #9
  %add103 = add i32 %call75, %add39
  %xor106 = xor i32 %add103, %call43
  %call107 = call fastcc i32 @rol32(i32 noundef %xor106, i32 noundef 8) #9
  %add111 = add i32 %call83, %add47
  %xor114 = xor i32 %add111, %call51
  %call115 = call fastcc i32 @rol32(i32 noundef %xor114, i32 noundef 7) #9
  %add119 = add i32 %call91, %add55
  %xor122 = xor i32 %add119, %call59
  %call123 = call fastcc i32 @rol32(i32 noundef %xor122, i32 noundef 7) #9
  %add127 = add i32 %call99, %add63
  %xor130 = xor i32 %add127, %call67
  %call131 = call fastcc i32 @rol32(i32 noundef %xor130, i32 noundef 7) #9
  %add135 = add i32 %call107, %add71
  %xor138 = xor i32 %add135, %call75
  %call139 = call fastcc i32 @rol32(i32 noundef %xor138, i32 noundef 7) #9
  %add143 = add i32 %call123, %add79
  %xor146 = xor i32 %add143, %call107
  %call147 = call fastcc i32 @rol32(i32 noundef %xor146, i32 noundef 16) #9
  %add151 = add i32 %call131, %add87
  %xor154 = xor i32 %add151, %call83
  %call155 = call fastcc i32 @rol32(i32 noundef %xor154, i32 noundef 16) #9
  %add159 = add i32 %call139, %add95
  %xor162 = xor i32 %add159, %call91
  %call163 = call fastcc i32 @rol32(i32 noundef %xor162, i32 noundef 16) #9
  %add167 = add i32 %call115, %add103
  %xor170 = xor i32 %add167, %call99
  %call171 = call fastcc i32 @rol32(i32 noundef %xor170, i32 noundef 16) #9
  %add175 = add i32 %call147, %add127
  %xor178 = xor i32 %add175, %call123
  %call179 = call fastcc i32 @rol32(i32 noundef %xor178, i32 noundef 12) #9
  %add183 = add i32 %call155, %add135
  %xor186 = xor i32 %add183, %call131
  %call187 = call fastcc i32 @rol32(i32 noundef %xor186, i32 noundef 12) #9
  %add191 = add i32 %call163, %add111
  %xor194 = xor i32 %add191, %call139
  %call195 = call fastcc i32 @rol32(i32 noundef %xor194, i32 noundef 12) #9
  %add199 = add i32 %call171, %add119
  %xor202 = xor i32 %add199, %call115
  %call203 = call fastcc i32 @rol32(i32 noundef %xor202, i32 noundef 12) #9
  %add207 = add i32 %call179, %add143
  %xor210 = xor i32 %add207, %call147
  %call211 = call fastcc i32 @rol32(i32 noundef %xor210, i32 noundef 8) #9
  %add215 = add i32 %call187, %add151
  %xor218 = xor i32 %add215, %call155
  %call219 = call fastcc i32 @rol32(i32 noundef %xor218, i32 noundef 8) #9
  %add223 = add i32 %call195, %add159
  %xor226 = xor i32 %add223, %call163
  %call227 = call fastcc i32 @rol32(i32 noundef %xor226, i32 noundef 8) #9
  %add231 = add i32 %call203, %add167
  %xor234 = xor i32 %add231, %call171
  %call235 = call fastcc i32 @rol32(i32 noundef %xor234, i32 noundef 8) #9
  %add239 = add i32 %call211, %add175
  %xor242 = xor i32 %add239, %call179
  %call243 = call fastcc i32 @rol32(i32 noundef %xor242, i32 noundef 7) #9
  %add247 = add i32 %call219, %add183
  %xor250 = xor i32 %add247, %call187
  %call251 = call fastcc i32 @rol32(i32 noundef %xor250, i32 noundef 7) #9
  %add255 = add i32 %call227, %add191
  %xor258 = xor i32 %add255, %call195
  %call259 = call fastcc i32 @rol32(i32 noundef %xor258, i32 noundef 7) #9
  %add263 = add i32 %call235, %add199
  %xor266 = xor i32 %add263, %call203
  %call267 = call fastcc i32 @rol32(i32 noundef %xor266, i32 noundef 7) #9
  %add269 = add i32 %i.0436, 2
  %cmp15 = icmp slt i32 %add269, %nrounds
  br i1 %cmp15, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store i32 %call267, i32* %arrayidx, align 4
  store i32 %add207, i32* %x, align 4
  store i32 %call219, i32* %arrayidx18, align 4
  store i32 %call243, i32* %arrayidx21, align 4
  store i32 %add215, i32* %arrayidx22, align 4
  store i32 %call227, i32* %arrayidx24, align 4
  store i32 %call251, i32* %arrayidx29, align 4
  store i32 %add223, i32* %arrayidx30, align 4
  store i32 %call235, i32* %arrayidx32, align 4
  store i32 %call259, i32* %arrayidx37, align 4
  store i32 %add231, i32* %arrayidx38, align 4
  store i32 %call211, i32* %arrayidx40, align 4
  store i32 %add255, i32* %arrayidx46, align 4
  store i32 %add263, i32* %arrayidx54, align 4
  store i32 %add239, i32* %arrayidx62, align 4
  store i32 %add247, i32* %arrayidx70, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @put_unaligned_le32(i32 noundef %val, i8* nocapture noundef writeonly %p) unnamed_addr #4 {
entry:
  %x = bitcast i8* %p to i32*
  store i32 %val, i32* %x, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @hchacha_block_generic(i32* noundef %state, i32* noundef %stream, i32 noundef %nrounds) local_unnamed_addr #0 {
entry:
  %x = alloca [16 x i32], align 4
  %0 = bitcast [16 x i32]* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %1 = bitcast i32* %state to i8*
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 64) #8
  call fastcc void @chacha_permute(i32* noundef nonnull %arraydecay, i32 noundef %nrounds) #9
  %2 = bitcast i32* %stream to i8*
  %call3 = call i8* @memcpy(i8* noundef %2, i8* noundef nonnull %0, i64 noundef 16) #8
  %arrayidx4 = getelementptr i32, i32* %stream, i64 4
  %3 = bitcast i32* %arrayidx4 to i8*
  %arrayidx5 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %4 = bitcast i32* %arrayidx5 to i8*
  %call6 = call i8* @memcpy(i8* noundef %3, i8* noundef %4, i64 noundef 16) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rol32(i32 noundef %word, i32 noundef %shift) unnamed_addr #5 {
entry:
  %or = call i32 @llvm.fshl.i32(i32 %word, i32 %word, i32 %shift)
  ret i32 %or
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{i64 2148542060}
