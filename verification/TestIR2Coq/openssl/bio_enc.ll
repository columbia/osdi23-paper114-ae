; ModuleID = 'crypto/evp/bio_enc.c'
source_filename = "crypto/evp/bio_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.engine_st = type opaque

@methods_enc = internal constant %struct.bio_method_st { i32 522, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @enc_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @enc_read, i32 (%struct.bio_st*, i8*)* null, i32 (%struct.bio_st*, i8*, i32)* null, i64 (%struct.bio_st*, i32, i64, i8*)* @enc_ctrl, i32 (%struct.bio_st*)* @enc_new, i32 (%struct.bio_st*)* @enc_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @enc_callback_ctrl }, align 8
@.str = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/evp/bio_enc.c\00", align 1
@__func__.enc_new = private unnamed_addr constant [8 x i8] c"enc_new\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_cipher() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_enc
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_set_cipher(%struct.bio_st* noundef %b, %struct.evp_cipher_st* noundef %c, i8* noundef %k, i8* noundef %i, i32 noundef %e) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* @BIO_get_callback_ex(%struct.bio_st* noundef %b) #5
  %cmp2.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %call1, null
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %0 = bitcast %struct.evp_cipher_st* %c to i8*
  %conv = sext i32 %e to i64
  %call4 = tail call i64 %call1(%struct.bio_st* noundef %b, i32 noundef 6, i8* noundef %0, i64 noundef 0, i32 noundef 4, i64 noundef %conv, i32 noundef 1, i64* noundef null) #5
  %cmp5 = icmp slt i64 %call4, 1
  br i1 %cmp5, label %cleanup, label %if.end18

if.else:                                          ; preds = %if.end
  %call9 = tail call i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* @BIO_get_callback(%struct.bio_st* noundef %b) #5
  %cmp10.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %call9, null
  br i1 %cmp10.not, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %1 = bitcast %struct.evp_cipher_st* %c to i8*
  %conv12 = sext i32 %e to i64
  %call13 = tail call i64 %call9(%struct.bio_st* noundef %b, i32 noundef 6, i8* noundef %1, i32 noundef 4, i64 noundef %conv12, i64 noundef 0) #5
  %cmp14 = icmp slt i64 %call13, 1
  br i1 %cmp14, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.else, %land.lhs.true, %if.then3
  %callback.0 = phi i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* [ null, %if.then3 ], [ %call9, %land.lhs.true ], [ null, %if.else ]
  tail call void @BIO_set_init(%struct.bio_st* noundef %b, i32 noundef 1) #5
  %cipher = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %cipher to %struct.evp_cipher_ctx_st**
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %2, align 8, !tbaa !4
  %call19 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %3, %struct.evp_cipher_st* noundef %c, %struct.engine_st* noundef null, i8* noundef %k, i8* noundef %i, i32 noundef %e) #5
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end18
  br i1 %cmp2.not, label %if.else28, label %if.then24

if.then24:                                        ; preds = %if.end21
  %4 = bitcast %struct.evp_cipher_st* %c to i8*
  %conv25 = sext i32 %e to i64
  %call26 = tail call i64 %call1(%struct.bio_st* noundef %b, i32 noundef 134, i8* noundef %4, i64 noundef 0, i32 noundef 4, i64 noundef %conv25, i32 noundef 1, i64* noundef null) #5
  %conv27 = trunc i64 %call26 to i32
  br label %cleanup

if.else28:                                        ; preds = %if.end21
  %cmp29.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %callback.0, null
  br i1 %cmp29.not, label %cleanup, label %if.then31

if.then31:                                        ; preds = %if.else28
  %5 = bitcast %struct.evp_cipher_st* %c to i8*
  %conv32 = sext i32 %e to i64
  %call33 = tail call i64 %callback.0(%struct.bio_st* noundef %b, i32 noundef 6, i8* noundef %5, i32 noundef 4, i64 noundef %conv32, i64 noundef 1) #5
  %conv34 = trunc i64 %call33 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %if.end18, %land.lhs.true, %if.then3, %entry, %if.then31, %if.then24
  %retval.0 = phi i32 [ %conv27, %if.then24 ], [ %conv34, %if.then31 ], [ 0, %entry ], [ 0, %if.then3 ], [ 0, %land.lhs.true ], [ 0, %if.end18 ], [ 1, %if.else28 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @BIO_get_data(%struct.bio_st* noundef) local_unnamed_addr #3

declare i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* @BIO_get_callback_ex(%struct.bio_st* noundef) local_unnamed_addr #3

declare i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* @BIO_get_callback(%struct.bio_st* noundef) local_unnamed_addr #3

declare void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @enc_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #1 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #5
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %cmp = icmp eq i8* %call, null
  %cmp2 = icmp eq %struct.bio_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #5
  %buf_len = bitcast i8* %call to i32*
  %0 = load i32, i32* %buf_len, align 8, !tbaa !10
  %buf_off = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %buf_off to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !11
  %sub = sub nsw i32 %0, %2
  %cmp3115 = icmp sgt i32 %sub, 0
  br i1 %cmp3115, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %buf = getelementptr inbounds i8, i8* %call, i64 48
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end8
  %3 = phi i32 [ %2, %while.body.lr.ph ], [ %add, %if.end8 ]
  %n.0116 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub10, %if.end8 ]
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %idxprom
  %call5 = tail call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef nonnull %arrayidx, i32 noundef %n.0116) #5
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #5
  br label %cleanup

if.end8:                                          ; preds = %while.body
  %4 = load i32, i32* %1, align 4, !tbaa !11
  %add = add nsw i32 %4, %call5
  store i32 %add, i32* %1, align 4, !tbaa !11
  %sub10 = sub nsw i32 %n.0116, %call5
  %cmp3 = icmp sgt i32 %sub10, 0
  br i1 %cmp3, label %while.body, label %while.end, !llvm.loop !12

while.end:                                        ; preds = %if.end8, %if.end
  %cmp11 = icmp eq i8* %in, null
  %cmp13 = icmp slt i32 %inl, 1
  %or.cond57 = or i1 %cmp11, %cmp13
  br i1 %or.cond57, label %cleanup, label %while.cond17.preheader

while.cond17.preheader:                           ; preds = %while.end
  store i32 0, i32* %1, align 4, !tbaa !11
  %cipher = getelementptr inbounds i8, i8* %call, i64 24
  %5 = bitcast i8* %cipher to %struct.evp_cipher_ctx_st**
  %buf21 = getelementptr inbounds i8, i8* %call, i64 48
  br label %while.body19

while.body19:                                     ; preds = %while.cond17.preheader, %while.end49
  %in.addr.0121 = phi i8* [ %in, %while.cond17.preheader ], [ %add.ptr, %while.end49 ]
  %inl.addr.0120 = phi i32 [ %inl, %while.cond17.preheader ], [ %sub26, %while.end49 ]
  %6 = icmp ult i32 %inl.addr.0120, 4096
  %cond = select i1 %6, i32 %inl.addr.0120, i32 4096
  %7 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %5, align 8, !tbaa !4
  %call23 = tail call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %7, i8* noundef nonnull %buf21, i32* noundef nonnull %buf_len, i8* noundef %in.addr.0121, i32 noundef %cond) #5
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %while.body19
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #5
  %ok = getelementptr inbounds i8, i8* %call, i64 16
  %8 = bitcast i8* %ok to i32*
  store i32 0, i32* %8, align 8, !tbaa !14
  br label %cleanup

if.end25:                                         ; preds = %while.body19
  %sub26 = sub nsw i32 %inl.addr.0120, %cond
  %idx.ext114 = zext i32 %cond to i64
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0121, i64 %idx.ext114
  store i32 0, i32* %1, align 4, !tbaa !11
  %9 = load i32, i32* %buf_len, align 8, !tbaa !10
  %cmp30117 = icmp sgt i32 %9, 0
  br i1 %cmp30117, label %while.body31, label %while.end49

while.body31:                                     ; preds = %if.end25, %if.end45
  %10 = phi i32 [ %add48, %if.end45 ], [ 0, %if.end25 ]
  %n.1118 = phi i32 [ %sub46, %if.end45 ], [ %9, %if.end25 ]
  %idxprom34 = sext i32 %10 to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %buf21, i64 %idxprom34
  %call36 = tail call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef nonnull %arrayidx35, i32 noundef %n.1118) #5
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %if.then38, label %if.end45

if.then38:                                        ; preds = %while.body31
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #5
  %cmp39 = icmp eq i32 %sub26, %inl
  %sub42 = sub nsw i32 %inl, %sub26
  %cond44 = select i1 %cmp39, i32 %call36, i32 %sub42
  br label %cleanup

if.end45:                                         ; preds = %while.body31
  %sub46 = sub nsw i32 %n.1118, %call36
  %11 = load i32, i32* %1, align 4, !tbaa !11
  %add48 = add nsw i32 %11, %call36
  store i32 %add48, i32* %1, align 4, !tbaa !11
  %cmp30 = icmp sgt i32 %sub46, 0
  br i1 %cmp30, label %while.body31, label %while.end49, !llvm.loop !15

while.end49:                                      ; preds = %if.end45, %if.end25
  store i32 0, i32* %buf_len, align 8, !tbaa !10
  store i32 0, i32* %1, align 4, !tbaa !11
  %cmp18 = icmp sgt i32 %sub26, 0
  br i1 %cmp18, label %while.body19, label %while.end52, !llvm.loop !16

while.end52:                                      ; preds = %while.end49
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry, %while.end52, %if.then38, %if.then24, %if.then7
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %cond44, %if.then38 ], [ 0, %if.then24 ], [ %inl, %while.end52 ], [ 0, %entry ], [ 0, %while.end ]
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @enc_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #1 {
entry:
  %buf_len76 = alloca i32, align 4
  %cmp = icmp eq i8* %out, null
  br i1 %cmp, label %cleanup156, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #5
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %cmp2 = icmp eq i8* %call, null
  %cmp3 = icmp eq %struct.bio_st* %call1, null
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup156, label %if.end5

if.end5:                                          ; preds = %if.end
  %buf_len = bitcast i8* %call to i32*
  %0 = load i32, i32* %buf_len, align 8, !tbaa !10
  %cmp6 = icmp sgt i32 %0, 0
  br i1 %cmp6, label %if.then7, label %if.end24

if.then7:                                         ; preds = %if.end5
  %buf_off = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %buf_off to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !11
  %sub = sub nsw i32 %0, %2
  %cmp9 = icmp sgt i32 %sub, %outl
  %spec.select = select i1 %cmp9, i32 %outl, i32 %sub
  %buf = getelementptr inbounds i8, i8* %call, i64 48
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %idxprom
  %conv = sext i32 %spec.select to i64
  %call13 = tail call i8* @memcpy(i8* noundef nonnull %out, i8* noundef nonnull %arrayidx, i64 noundef %conv) #5
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 %conv
  %sub14 = sub nsw i32 %outl, %spec.select
  %3 = load i32, i32* %1, align 4, !tbaa !11
  %add = add nsw i32 %spec.select, %3
  store i32 %add, i32* %1, align 4, !tbaa !11
  %4 = load i32, i32* %buf_len, align 8, !tbaa !10
  %cmp18 = icmp eq i32 %4, %add
  br i1 %cmp18, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.then7
  store i32 0, i32* %buf_len, align 8, !tbaa !10
  store i32 0, i32* %1, align 4, !tbaa !11
  br label %if.end24

if.end24:                                         ; preds = %if.then7, %if.then20, %if.end5
  %ret.0 = phi i32 [ %spec.select, %if.then20 ], [ %spec.select, %if.then7 ], [ 0, %if.end5 ]
  %outl.addr.0 = phi i32 [ %sub14, %if.then20 ], [ %sub14, %if.then7 ], [ %outl, %if.end5 ]
  %out.addr.0 = phi i8* [ %add.ptr, %if.then20 ], [ %add.ptr, %if.then7 ], [ %out, %if.end5 ]
  %cipher = getelementptr inbounds i8, i8* %call, i64 24
  %5 = bitcast i8* %cipher to %struct.evp_cipher_ctx_st**
  %6 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %5, align 8, !tbaa !4
  %call25 = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %6) #5
  %cmp26 = icmp eq i32 %call25, 1
  %spec.store.select = select i1 %cmp26, i32 0, i32 %call25
  %cmp30295 = icmp sgt i32 %outl.addr.0, 0
  br i1 %cmp30295, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end24
  %cont = getelementptr inbounds i8, i8* %call, i64 8
  %7 = bitcast i8* %cont to i32*
  %read_start = getelementptr inbounds i8, i8* %call, i64 32
  %8 = bitcast i8* %read_start to i8**
  %read_end = getelementptr inbounds i8, i8* %call, i64 40
  %9 = bitcast i8* %read_end to i8**
  %arrayidx40 = getelementptr inbounds i8, i8* %call, i64 336
  %buf63 = getelementptr inbounds i8, i8* %call, i64 48
  %ok = getelementptr inbounds i8, i8* %call, i64 16
  %10 = bitcast i8* %ok to i32*
  %buf_off66 = getelementptr inbounds i8, i8* %call, i64 4
  %11 = bitcast i8* %buf_off66 to i32*
  %12 = bitcast i32* %buf_len76 to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %out.addr.1300 = phi i8* [ %out.addr.0, %while.body.lr.ph ], [ %out.addr.1.be, %while.cond.backedge ]
  %outl.addr.1298 = phi i32 [ %outl.addr.0, %while.body.lr.ph ], [ %outl.addr.1.be, %while.cond.backedge ]
  %ret.1296 = phi i32 [ %ret.0, %while.body.lr.ph ], [ %ret.1.be, %while.cond.backedge ]
  %13 = load i32, i32* %7, align 8, !tbaa !17
  %cmp32 = icmp slt i32 %13, 1
  br i1 %cmp32, label %while.end, label %if.end35

if.end35:                                         ; preds = %while.body
  %14 = load i8*, i8** %8, align 8, !tbaa !18
  %15 = load i8*, i8** %9, align 8, !tbaa !19
  %cmp36 = icmp eq i8* %14, %15
  br i1 %cmp36, label %if.then38, label %if.end55

if.then38:                                        ; preds = %if.end35
  store i8* %arrayidx40, i8** %8, align 8, !tbaa !18
  store i8* %arrayidx40, i8** %9, align 8, !tbaa !19
  %call44 = call i32 @BIO_read(%struct.bio_st* noundef %call1, i8* noundef nonnull %arrayidx40, i32 noundef 4096) #5
  %cmp45 = icmp sgt i32 %call44, 0
  br i1 %cmp45, label %if.end55.thread274, label %if.then58

if.end55.thread274:                               ; preds = %if.then38
  %16 = load i8*, i8** %9, align 8, !tbaa !19
  %idx.ext49289 = zext i32 %call44 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %16, i64 %idx.ext49289
  store i8* %add.ptr50, i8** %9, align 8, !tbaa !19
  br label %if.else71

if.end55:                                         ; preds = %if.end35
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv54 = trunc i64 %sub.ptr.sub to i32
  %cmp56 = icmp slt i32 %conv54, 1
  br i1 %cmp56, label %if.then58, label %if.else71

if.then58:                                        ; preds = %if.then38, %if.end55
  %i.1273 = phi i32 [ %conv54, %if.end55 ], [ %call44, %if.then38 ]
  %call59 = call i32 @BIO_test_flags(%struct.bio_st* noundef %call1, i32 noundef 8) #5
  %tobool.not = icmp eq i32 %call59, 0
  br i1 %tobool.not, label %if.then60, label %if.else67

if.then60:                                        ; preds = %if.then58
  store i32 %i.1273, i32* %7, align 8, !tbaa !17
  %17 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %5, align 8, !tbaa !4
  %call65 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %17, i8* noundef nonnull %buf63, i32* noundef nonnull %buf_len) #5
  store i32 %call65, i32* %10, align 8, !tbaa !14
  store i32 0, i32* %11, align 4, !tbaa !11
  %.pre307 = load i32, i32* %buf_len, align 8, !tbaa !10
  br label %if.end128

if.else67:                                        ; preds = %if.then58
  %cmp68 = icmp eq i32 %ret.1296, 0
  %cond = select i1 %cmp68, i32 %i.1273, i32 %ret.1296
  br label %while.end

if.else71:                                        ; preds = %if.end55.thread274, %if.end55
  %i.1277 = phi i32 [ %call44, %if.end55.thread274 ], [ %conv54, %if.end55 ]
  %cmp72 = icmp ugt i32 %outl.addr.1298, 256
  br i1 %cmp72, label %if.then74, label %if.else71.if.end104_crit_edge

if.else71.if.end104_crit_edge:                    ; preds = %if.else71
  %.pre = load i8*, i8** %8, align 8, !tbaa !18
  br label %if.end104

if.then74:                                        ; preds = %if.else71
  %sub75 = sub nsw i32 %outl.addr.1298, %spec.store.select
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #6
  %18 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %5, align 8, !tbaa !4
  %19 = load i8*, i8** %8, align 8, !tbaa !18
  %cmp79 = icmp sgt i32 %i.1277, %sub75
  %cond84 = select i1 %cmp79, i32 %sub75, i32 %i.1277
  %call85 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %18, i8* noundef %out.addr.1300, i32* noundef nonnull %buf_len76, i8* noundef %19, i32 noundef %cond84) #5
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %cleanup.thread, label %if.end88

cleanup.thread:                                   ; preds = %if.then74
  call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6
  br label %cleanup156

if.end88:                                         ; preds = %if.then74
  %20 = load i32, i32* %buf_len76, align 4, !tbaa !20
  %add89 = add nsw i32 %20, %ret.1296
  %idx.ext90 = sext i32 %20 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %out.addr.1300, i64 %idx.ext90
  %sub92 = sub nsw i32 %outl.addr.1298, %20
  %sub93 = sub nsw i32 %i.1277, %sub75
  %cmp94 = icmp slt i32 %sub93, 1
  br i1 %cmp94, label %cleanup, label %cleanup.thread283

cleanup.thread283:                                ; preds = %if.end88
  %21 = load i8*, i8** %8, align 8, !tbaa !18
  %idx.ext101 = sext i32 %sub75 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %21, i64 %idx.ext101
  store i8* %add.ptr102, i8** %8, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6
  br label %if.end104

cleanup:                                          ; preds = %if.end88
  %22 = load i8*, i8** %9, align 8, !tbaa !19
  store i8* %22, i8** %8, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6
  br label %while.cond.backedge

if.end104:                                        ; preds = %if.else71.if.end104_crit_edge, %cleanup.thread283
  %23 = phi i8* [ %.pre, %if.else71.if.end104_crit_edge ], [ %add.ptr102, %cleanup.thread283 ]
  %ret.3 = phi i32 [ %ret.1296, %if.else71.if.end104_crit_edge ], [ %add89, %cleanup.thread283 ]
  %i.3 = phi i32 [ %i.1277, %if.else71.if.end104_crit_edge ], [ %sub93, %cleanup.thread283 ]
  %outl.addr.3 = phi i32 [ %outl.addr.1298, %if.else71.if.end104_crit_edge ], [ %sub92, %cleanup.thread283 ]
  %out.addr.3 = phi i8* [ %out.addr.1300, %if.else71.if.end104_crit_edge ], [ %add.ptr91, %cleanup.thread283 ]
  %24 = icmp ult i32 %i.3, 256
  %spec.select270 = select i1 %24, i32 %i.3, i32 256
  %25 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %5, align 8, !tbaa !4
  %call114 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %25, i8* noundef nonnull %buf63, i32* noundef nonnull %buf_len, i8* noundef %23, i32 noundef %spec.select270) #5
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end104
  call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #5
  store i32 0, i32* %10, align 8, !tbaa !14
  br label %cleanup156

if.end118:                                        ; preds = %if.end104
  %26 = load i8*, i8** %8, align 8, !tbaa !18
  %idx.ext120290 = zext i32 %spec.select270 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %26, i64 %idx.ext120290
  store i8* %add.ptr121, i8** %8, align 8, !tbaa !18
  store i32 1, i32* %7, align 8, !tbaa !17
  %27 = load i32, i32* %buf_len, align 8, !tbaa !10
  %cmp124 = icmp eq i32 %27, 0
  br i1 %cmp124, label %while.cond.backedge, label %if.end128

if.end128:                                        ; preds = %if.end118, %if.then60
  %28 = phi i32 [ %.pre307, %if.then60 ], [ %27, %if.end118 ]
  %ret.4 = phi i32 [ %ret.1296, %if.then60 ], [ %ret.3, %if.end118 ]
  %outl.addr.4 = phi i32 [ %outl.addr.1298, %if.then60 ], [ %outl.addr.3, %if.end118 ]
  %out.addr.4 = phi i8* [ %out.addr.1300, %if.then60 ], [ %out.addr.3, %if.end118 ]
  %cmp130.not = icmp sgt i32 %28, %outl.addr.4
  %outl.addr.4. = select i1 %cmp130.not, i32 %outl.addr.4, i32 %28
  %cmp136 = icmp slt i32 %outl.addr.4., 1
  br i1 %cmp136, label %while.end, label %if.end139

if.end139:                                        ; preds = %if.end128
  %conv142291 = zext i32 %outl.addr.4. to i64
  %call143 = call i8* @memcpy(i8* noundef %out.addr.4, i8* noundef nonnull %buf63, i64 noundef %conv142291) #5
  %add144 = add nsw i32 %outl.addr.4., %ret.4
  store i32 %outl.addr.4., i32* %11, align 4, !tbaa !11
  %sub146 = sub nsw i32 %outl.addr.4, %outl.addr.4.
  %add.ptr148 = getelementptr inbounds i8, i8* %out.addr.4, i64 %conv142291
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end139, %if.end118, %cleanup
  %ret.1.be = phi i32 [ %add144, %if.end139 ], [ %add89, %cleanup ], [ %ret.3, %if.end118 ]
  %outl.addr.1.be = phi i32 [ %sub146, %if.end139 ], [ %sub92, %cleanup ], [ %outl.addr.3, %if.end118 ]
  %out.addr.1.be = phi i8* [ %add.ptr148, %if.end139 ], [ %add.ptr91, %cleanup ], [ %out.addr.3, %if.end118 ]
  %cmp30 = icmp sgt i32 %outl.addr.1.be, 0
  br i1 %cmp30, label %while.body, label %while.end, !llvm.loop !21

while.end:                                        ; preds = %while.cond.backedge, %while.body, %if.end128, %if.end24, %if.else67
  %ret.5 = phi i32 [ %cond, %if.else67 ], [ %ret.0, %if.end24 ], [ %ret.1.be, %while.cond.backedge ], [ %ret.1296, %while.body ], [ %ret.4, %if.end128 ]
  call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #5
  call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #5
  %cmp149 = icmp eq i32 %ret.5, 0
  br i1 %cmp149, label %cond.true151, label %cleanup156

cond.true151:                                     ; preds = %while.end
  %cont152 = getelementptr inbounds i8, i8* %call, i64 8
  %29 = bitcast i8* %cont152 to i32*
  %30 = load i32, i32* %29, align 8, !tbaa !17
  br label %cleanup156

cleanup156:                                       ; preds = %cleanup.thread, %cond.true151, %while.end, %if.end, %entry, %if.then116
  %retval.4 = phi i32 [ 0, %if.then116 ], [ 0, %entry ], [ 0, %if.end ], [ %30, %cond.true151 ], [ %ret.5, %while.end ], [ 0, %cleanup.thread ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @enc_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #5
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 13, label %sw.bb13
    i32 10, label %sw.bb19
    i32 11, label %again.preheader
    i32 113, label %sw.bb57
    i32 101, label %sw.bb60
    i32 129, label %sw.bb62
    i32 12, label %sw.bb64
  ]

again.preheader:                                  ; preds = %if.end
  %buf_len30 = bitcast i8* %call to i32*
  %buf_off31 = getelementptr inbounds i8, i8* %call, i64 4
  %0 = bitcast i8* %buf_off31 to i32*
  %finished40 = getelementptr inbounds i8, i8* %call, i64 12
  %1 = bitcast i8* %finished40 to i32*
  %cipher45 = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %cipher45 to %struct.evp_cipher_ctx_st**
  %buf = getelementptr inbounds i8, i8* %call, i64 48
  %ok50 = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %ok50 to i32*
  br label %while.cond

sw.bb:                                            ; preds = %if.end
  %ok = getelementptr inbounds i8, i8* %call, i64 16
  %4 = bitcast i8* %ok to i32*
  store i32 1, i32* %4, align 8, !tbaa !14
  %finished = getelementptr inbounds i8, i8* %call, i64 12
  %5 = bitcast i8* %finished to i32*
  store i32 0, i32* %5, align 4, !tbaa !22
  %cipher = getelementptr inbounds i8, i8* %call, i64 24
  %6 = bitcast i8* %cipher to %struct.evp_cipher_ctx_st**
  %7 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %6, align 8, !tbaa !4
  %call3 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %7) #5
  %call4 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %7, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef %call3) #5
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %sw.bb
  %call7 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 1, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %cont = getelementptr inbounds i8, i8* %call, i64 8
  %8 = bitcast i8* %cont to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !17
  %cmp9 = icmp slt i32 %9, 1
  br i1 %cmp9, label %cleanup, label %if.else

if.else:                                          ; preds = %sw.bb8
  %call11 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 2, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %buf_len = bitcast i8* %call to i32*
  %10 = load i32, i32* %buf_len, align 8, !tbaa !10
  %buf_off = getelementptr inbounds i8, i8* %call, i64 4
  %11 = bitcast i8* %buf_off to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !11
  %sub = sub nsw i32 %10, %12
  %conv = sext i32 %sub to i64
  %cmp14 = icmp slt i32 %sub, 1
  br i1 %cmp14, label %if.then16, label %cleanup

if.then16:                                        ; preds = %sw.bb13
  %call17 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 13, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  %buf_len20 = bitcast i8* %call to i32*
  %13 = load i32, i32* %buf_len20, align 8, !tbaa !10
  %buf_off21 = getelementptr inbounds i8, i8* %call, i64 4
  %14 = bitcast i8* %buf_off21 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !11
  %sub22 = sub nsw i32 %13, %15
  %conv23 = sext i32 %sub22 to i64
  %cmp24 = icmp slt i32 %sub22, 1
  br i1 %cmp24, label %if.then26, label %cleanup

if.then26:                                        ; preds = %sw.bb19
  %call27 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 10, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

while.cond:                                       ; preds = %while.cond.backedge, %again.preheader
  %16 = load i32, i32* %buf_len30, align 8, !tbaa !10
  %17 = load i32, i32* %0, align 4, !tbaa !11
  %cmp32.not = icmp eq i32 %16, %17
  br i1 %cmp32.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call34 = tail call i32 @enc_write(%struct.bio_st* noundef %b, i8* noundef null, i32 noundef 0) #7
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body, %if.then42
  br label %while.cond, !llvm.loop !23

if.then37:                                        ; preds = %while.body
  %conv38 = sext i32 %call34 to i64
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %1, align 4, !tbaa !22
  %tobool41.not = icmp eq i32 %18, 0
  br i1 %tobool41.not, label %if.then42, label %if.end55

if.then42:                                        ; preds = %while.end
  store i32 1, i32* %1, align 4, !tbaa !22
  store i32 0, i32* %0, align 4, !tbaa !11
  %19 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %2, align 8, !tbaa !4
  %call47 = tail call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %19, i8* noundef nonnull %buf, i32* noundef nonnull %buf_len30) #5
  store i32 %call47, i32* %3, align 8, !tbaa !14
  %cmp51 = icmp slt i32 %call47, 1
  br i1 %cmp51, label %cleanup.loopexit, label %while.cond.backedge

if.end55:                                         ; preds = %while.end
  %call56 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 11, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

sw.bb57:                                          ; preds = %if.end
  %ok58 = getelementptr inbounds i8, i8* %call, i64 16
  %20 = bitcast i8* %ok58 to i32*
  %21 = load i32, i32* %20, align 8, !tbaa !14
  %conv59 = sext i32 %21 to i64
  br label %cleanup

sw.bb60:                                          ; preds = %if.end
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #5
  %call61 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 101, i64 noundef %num, i8* noundef %ptr) #5
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #5
  br label %cleanup

sw.bb62:                                          ; preds = %if.end
  %22 = bitcast i8* %ptr to %struct.evp_cipher_ctx_st**
  %cipher63 = getelementptr inbounds i8, i8* %call, i64 24
  %23 = bitcast i8* %cipher63 to %struct.evp_cipher_ctx_st**
  %24 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %23, align 8, !tbaa !4
  store %struct.evp_cipher_ctx_st* %24, %struct.evp_cipher_ctx_st** %22, align 8, !tbaa !24
  tail call void @BIO_set_init(%struct.bio_st* noundef %b, i32 noundef 1) #5
  br label %cleanup

sw.bb64:                                          ; preds = %if.end
  %25 = bitcast i8* %ptr to %struct.bio_st*
  %call65 = tail call i8* @BIO_get_data(%struct.bio_st* noundef %25) #5
  %call66 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #5
  %cipher67 = getelementptr inbounds i8, i8* %call65, i64 24
  %26 = bitcast i8* %cipher67 to %struct.evp_cipher_ctx_st**
  store %struct.evp_cipher_ctx_st* %call66, %struct.evp_cipher_ctx_st** %26, align 8, !tbaa !4
  %cmp69 = icmp eq %struct.evp_cipher_ctx_st* %call66, null
  br i1 %cmp69, label %cleanup, label %if.end72

if.end72:                                         ; preds = %sw.bb64
  %cipher74 = getelementptr inbounds i8, i8* %call, i64 24
  %27 = bitcast i8* %cipher74 to %struct.evp_cipher_ctx_st**
  %28 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %27, align 8, !tbaa !4
  %call75 = tail call i32 @EVP_CIPHER_CTX_copy(%struct.evp_cipher_ctx_st* noundef nonnull %call66, %struct.evp_cipher_ctx_st* noundef %28) #5
  %tobool77.not = icmp eq i32 %call75, 0
  br i1 %tobool77.not, label %cleanup, label %if.then78

if.then78:                                        ; preds = %if.end72
  %conv76 = sext i32 %call75 to i64
  tail call void @BIO_set_init(%struct.bio_st* noundef %25, i32 noundef 1) #5
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %call80 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.then42
  %conv48.le = sext i32 %call47 to i64
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end6, %if.end55, %sw.bb57, %sw.bb60, %sw.bb62, %sw.default, %if.else, %if.then16, %sw.bb13, %if.then26, %sw.bb19, %if.then78, %if.end72, %sw.bb8, %sw.bb64, %sw.bb, %entry, %if.then37
  %retval.0 = phi i64 [ %conv38, %if.then37 ], [ 0, %entry ], [ 0, %sw.bb ], [ 0, %sw.bb64 ], [ %call80, %sw.default ], [ %conv76, %if.then78 ], [ 0, %if.end72 ], [ 1, %sw.bb62 ], [ %call61, %sw.bb60 ], [ %conv59, %sw.bb57 ], [ %call56, %if.end55 ], [ %call27, %if.then26 ], [ %conv23, %sw.bb19 ], [ %call17, %if.then16 ], [ %conv, %sw.bb13 ], [ %call11, %if.else ], [ %call7, %if.end6 ], [ 1, %sw.bb8 ], [ %conv48.le, %cleanup.loopexit ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @enc_new(%struct.bio_st* noundef %bi) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 4432, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 68) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.enc_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #5
  %cipher = getelementptr inbounds i8, i8* %call, i64 24
  %0 = bitcast i8* %cipher to %struct.evp_cipher_ctx_st**
  store %struct.evp_cipher_ctx_st* %call1, %struct.evp_cipher_ctx_st** %0, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.evp_cipher_ctx_st* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 75) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cont = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %cont to i32*
  store i32 1, i32* %1, align 8, !tbaa !17
  %ok = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %ok to i32*
  store i32 1, i32* %2, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 336
  %read_start = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %read_start to i8**
  store i8* %arrayidx, i8** %3, align 8, !tbaa !18
  %read_end = getelementptr inbounds i8, i8* %call, i64 40
  %4 = bitcast i8* %read_end to i8**
  store i8* %arrayidx, i8** %4, align 8, !tbaa !19
  tail call void @BIO_set_data(%struct.bio_st* noundef %bi, i8* noundef nonnull %call) #5
  tail call void @BIO_set_init(%struct.bio_st* noundef %bi, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @enc_free(%struct.bio_st* noundef %a) #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %a) #5
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %cipher = getelementptr inbounds i8, i8* %call, i64 24
  %0 = bitcast i8* %cipher to %struct.evp_cipher_ctx_st**
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %0, align 8, !tbaa !4
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %1) #5
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %call, i64 noundef 4432, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 99) #5
  tail call void @BIO_set_data(%struct.bio_st* noundef nonnull %a, i8* noundef null) #5
  tail call void @BIO_set_init(%struct.bio_st* noundef nonnull %a, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @enc_callback_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

declare %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #3

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #3

declare i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_copy(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @BIO_set_data(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 24}
!5 = !{!"enc_struct", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !7, i64 48}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!5, !6, i64 4}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!5, !6, i64 16}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{!5, !6, i64 8}
!18 = !{!5, !9, i64 32}
!19 = !{!5, !9, i64 40}
!20 = !{!6, !6, i64 0}
!21 = distinct !{!21, !13}
!22 = !{!5, !6, i64 12}
!23 = distinct !{!23, !13}
!24 = !{!9, !9, i64 0}
